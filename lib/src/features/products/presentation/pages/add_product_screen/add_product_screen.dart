import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/add_product_screen/widgets/date_picker_widget.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/add_product_screen/widgets/storage_unit_dropdown_widget.dart';
import '../../../../../core/l10n/app_localizations.dart';
import '../../../../../core/routing/app_router.dart';
import '../../../../kitchen/domain/entities/room.dart';
import '../../../../kitchen/domain/entities/storage_unit.dart';
import '../../../data/datasources/product_api_service.dart';
import '../../../domain/entities/category_products.dart';
import '../../../domain/entities/product.dart';
import '../../dtos/new_product_dto.dart';
import 'widgets/category_dropdown_widget.dart';
import 'widgets/product_text_form_widget.dart';
import 'widgets/room_dropdown_widget.dart';
import '../barcode_scanner_screen/widgets/scan_barcode_widget.dart';

@RoutePage()
class AddProductScreen extends StatefulWidget {
  final Product? modifiedProduct;
  final Room? selectedRoom;
  final StorageUnit? selectedStorageUnit;
  final List<Room> allRooms;
  final List<StorageUnit> allStorageUnits;

  const AddProductScreen({
    required this.allRooms,
    required this.allStorageUnits,
    this.selectedRoom,
    this.selectedStorageUnit,
    this.modifiedProduct,
    super.key,
  });

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _categoryController = TextEditingController();
  final _roomController = TextEditingController();
  final _storageUnitController = TextEditingController();
  final _amountController = TextEditingController();

  CategoryProducts category = CategoryProducts.other;
  String name = '';
  DateTime? expiryDate;
  int amount = 1;
  int? roomId;
  int? storageUnitId;

  @override
  void initState() {
    super.initState();

    _roomController.text = widget.selectedRoom?.name ?? '';
    _storageUnitController.text = widget.selectedStorageUnit?.name ?? '';
    roomId = widget.selectedRoom?.id;
    storageUnitId = widget.selectedStorageUnit?.id;

    if (widget.modifiedProduct != null) {
      name = widget.modifiedProduct!.name;
      _nameController.text = name;
      category = widget.modifiedProduct!.category;
      amount = widget.modifiedProduct!.amount;
      expiryDate = widget.modifiedProduct?.expiryDate;
    }
    _categoryController.text = category.name;
    _amountController.text = amount.toString();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _categoryController.dispose();
    _roomController.dispose();
    _storageUnitController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  Future<void> _scanBarcode() async {
    Map<String, dynamic>? scannedProduct;
    final result = await context.router.push<String>(BarcodeScannerRoute());

    if (!mounted) return;

    if (result == null) {
      name = '';
      category = CategoryProducts.other;
      final snackBar = SnackBar(
        content: Text(AppLocalizations.of(context)!.errorBarcode),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    try {
      scannedProduct = await ProductApiService.fetchProduct(result);
    } on SocketException {
      if (!mounted) return;
      final snackBar = SnackBar(
        content: Text(AppLocalizations.of(context)!.errorInternet),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    if (!mounted) return;

    if (scannedProduct == null) {
      name = '';
      category = CategoryProducts.other;
      _nameController.text = name;
      _categoryController.text = category.name;
      final snackBar = SnackBar(
        content: Text(AppLocalizations.of(context)!.errorProductInfo),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    final productTags = [
      ...ProductApiService.ensureList(scannedProduct['categories_old']),
      ...ProductApiService.ensureList(scannedProduct['categories_hierarchy']),
      ...ProductApiService.ensureList(scannedProduct['_keywords']),
    ];

    setState(() {
      name = ProductApiService.extractProductName(scannedProduct!);
      category = ProductApiService.mapCategory(productTags);
    });

    _nameController.text = name;
    _categoryController.text = category.name;
  }

  void _submitProduct() {
    if (_formKey.currentState?.validate() ?? false) {
      final newProduct = NewProductDto(
        name: name,
        category: category,
        amount: amount,
        expiryDate: expiryDate,
        selectedRoom: roomId,
        selectedStorageUnit: storageUnitId,
      );
      context.router.pop(newProduct);
    } else {
      final snackBar = SnackBar(
        content: Text(AppLocalizations.of(context)!.errorInvalidInfo),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.modifiedProduct != null;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEditing
              ? AppLocalizations.of(context)!.modifyProductTitle
              : AppLocalizations.of(context)!.addProductTitle,
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductTextFormWidget(
                controller: _nameController,
                label: AppLocalizations.of(context)!.productNameLabel,
                icon: Icons.fastfood,
                onChanged: (val) => name = val,
              ),
              const SizedBox(height: 16),
              CategoryDropdownWidget(
                categoryController: _categoryController,
                onSelect: (CategoryProducts? val) {
                  setState(() {
                    category = val!;
                    _categoryController.text = val.name;
                  });
                },
              ),
              const SizedBox(height: 16),
              if (!isEditing) ScanBarcodeWidget(scanBarcode: _scanBarcode),
              if (!isEditing) const SizedBox(height: 16),
              ProductTextFormWidget(
                controller: _amountController,
                label: AppLocalizations.of(context)!.amountLabel,
                textInputType: TextInputType.number,
                icon: Icons.scale,
                onChanged: (val) => amount = int.tryParse(val) ?? 1,
              ),
              const SizedBox(height: 16),
              DatePickerWidget(
                expiryDate: expiryDate,
                onSelect: (pickedDate) {
                  setState(() {
                    expiryDate = pickedDate;
                  });
                },
              ),
              const Divider(height: 32),
              RoomDropdownWidget(
                roomController: _roomController,
                allRooms: widget.allRooms,
                onSelect: (r) {
                  setState(() {
                    roomId = r?.id;
                    _storageUnitController.clear();
                    storageUnitId = null;
                  });
                },
              ),
              const SizedBox(height: 16),
              StorageUnitDropdownWidget(
                storageUnitController: _storageUnitController,
                allStorageUnits: widget.allStorageUnits,
                onSelect: (s) => storageUnitId = s?.id,
                roomId: roomId,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: _submitProduct,
          child: Text(
            isEditing
                ? AppLocalizations.of(context)!.updateProductButton
                : AppLocalizations.of(context)!.addProductButton,
          ),
        ),
      ),
    );
  }
}
