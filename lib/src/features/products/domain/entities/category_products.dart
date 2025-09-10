import 'package:flutter/material.dart';

enum CategoryProducts {
  fish,
  cannedFoods,
  fruits,
  vegetables,
  dairyProducts,
  meat,
  seafood,
  grains,
  seeds,
  spices,
  fats,
  sugars,
  snacks,
  coffee,
  tea,
  softDrinks,
  alcoholicBeverages,
  frozenFoods,
  sauces,
  soups,
  eggs,
  plantBasedAlternatives,
  babyFood,
  organicProducts,
  glutenFreeProducts,
  readyToEatMeals,
  healthSupplements,
  other,
}

extension CategoryProductsX on CategoryProducts {
  IconData get icon {
    switch (this) {
      case CategoryProducts.fish:
        return Icons.set_meal; // 🐟
      case CategoryProducts.cannedFoods:
        return Icons.inventory_2;
      case CategoryProducts.fruits:
        return Icons.apple;
      case CategoryProducts.vegetables:
        return Icons.eco;
      case CategoryProducts.dairyProducts:
        return Icons.local_drink;
      case CategoryProducts.meat:
        return Icons.restaurant;
      case CategoryProducts.seafood:
        return Icons.set_meal_outlined;
      case CategoryProducts.grains:
        return Icons.grain;
      case CategoryProducts.seeds:
        return Icons.energy_savings_leaf;
      case CategoryProducts.spices:
        return Icons.local_florist;
      case CategoryProducts.fats:
        return Icons.local_gas_station;
      case CategoryProducts.sugars:
        return Icons.cake;
      case CategoryProducts.snacks:
        return Icons.fastfood;
      case CategoryProducts.softDrinks:
        return Icons.local_drink;
      case CategoryProducts.coffee:
        return Icons.coffee;
      case CategoryProducts.tea:
        return Icons.emoji_food_beverage;
      case CategoryProducts.alcoholicBeverages:
        return Icons.local_bar;
      case CategoryProducts.frozenFoods:
        return Icons.ac_unit;
      case CategoryProducts.sauces:
        return Icons.soup_kitchen;
      case CategoryProducts.soups:
        return Icons.ramen_dining;
      case CategoryProducts.eggs:
        return Icons.egg_outlined;
      case CategoryProducts.plantBasedAlternatives:
        return Icons.eco_outlined;
      case CategoryProducts.babyFood:
        return Icons.child_care;
      case CategoryProducts.organicProducts:
        return Icons.nature;
      case CategoryProducts.glutenFreeProducts:
        return Icons.no_food;
      case CategoryProducts.readyToEatMeals:
        return Icons.dining;
      case CategoryProducts.healthSupplements:
        return Icons.medical_services;
      case CategoryProducts.other:
        return Icons.category;
    }
  }

  String get localizationKey => "category.$name";
}
