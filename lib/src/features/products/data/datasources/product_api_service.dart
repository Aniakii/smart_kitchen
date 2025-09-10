import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_kitchen/src/features/products/domain/entities/category_products.dart';

class ProductApiService {
  static String apiUrl = 'https://world.openfoodfacts.org/api/v0/product/';

  static Future<Map<String, dynamic>?> fetchProduct(String barcode) async {
    final url = Uri.parse("$apiUrl$barcode.json");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['status'] == 1) {
        return data['product'];
      }
    }
    return null;
  }

  static CategoryProducts mapCategory(List<dynamic> categoriesTags) {
    for (CategoryProducts category in CategoryProducts.values) {
      if (categoriesTags.any((tag) => tag.contains(category.name))) {
        return category;
      }
    }
    return CategoryProducts.other;
  }

  static String extractProductName(Map<String, dynamic> product) {
    final possibleNames = [
      product['product_name'],
      product['product_name_pl'],
      product['product_name_en'],
      product['product_name_de'],
      product['product_name_hu'],
    ];

    for (final name in possibleNames) {
      if (name != null && name.toString().trim().isNotEmpty) {
        return name.toString().trim();
      }
    }

    return '';
  }

  static List<String> ensureList(dynamic value) {
    if (value == null) return [];
    if (value is String) {
      return value.split(',').map((e) => e.trim()).toList();
    }
    if (value is List) {
      return value.map((e) => e.toString()).toList();
    }
    return [];
  }
}
