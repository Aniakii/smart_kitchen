// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddProductScreen]
class AddProductRoute extends PageRouteInfo<AddProductRouteArgs> {
  AddProductRoute({
    required List<Room> allRooms,
    required List<StorageUnit> allStorageUnits,
    Room? selectedRoom,
    StorageUnit? selectedStorageUnit,
    Product? modifiedProduct,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         AddProductRoute.name,
         args: AddProductRouteArgs(
           allRooms: allRooms,
           allStorageUnits: allStorageUnits,
           selectedRoom: selectedRoom,
           selectedStorageUnit: selectedStorageUnit,
           modifiedProduct: modifiedProduct,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AddProductRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddProductRouteArgs>();
      return AddProductScreen(
        allRooms: args.allRooms,
        allStorageUnits: args.allStorageUnits,
        selectedRoom: args.selectedRoom,
        selectedStorageUnit: args.selectedStorageUnit,
        modifiedProduct: args.modifiedProduct,
        key: args.key,
      );
    },
  );
}

class AddProductRouteArgs {
  const AddProductRouteArgs({
    required this.allRooms,
    required this.allStorageUnits,
    this.selectedRoom,
    this.selectedStorageUnit,
    this.modifiedProduct,
    this.key,
  });

  final List<Room> allRooms;

  final List<StorageUnit> allStorageUnits;

  final Room? selectedRoom;

  final StorageUnit? selectedStorageUnit;

  final Product? modifiedProduct;

  final Key? key;

  @override
  String toString() {
    return 'AddProductRouteArgs{allRooms: $allRooms, allStorageUnits: $allStorageUnits, selectedRoom: $selectedRoom, selectedStorageUnit: $selectedStorageUnit, modifiedProduct: $modifiedProduct, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddProductRouteArgs) return false;
    return const ListEquality().equals(allRooms, other.allRooms) &&
        const ListEquality().equals(allStorageUnits, other.allStorageUnits) &&
        selectedRoom == other.selectedRoom &&
        selectedStorageUnit == other.selectedStorageUnit &&
        modifiedProduct == other.modifiedProduct &&
        key == other.key;
  }

  @override
  int get hashCode =>
      const ListEquality().hash(allRooms) ^
      const ListEquality().hash(allStorageUnits) ^
      selectedRoom.hashCode ^
      selectedStorageUnit.hashCode ^
      modifiedProduct.hashCode ^
      key.hashCode;
}

/// generated route for
/// [AllProductsScreen]
class AllProductsRoute extends PageRouteInfo<AllProductsRouteArgs> {
  AllProductsRoute({
    Room? selectedRoom,
    StorageUnit? selectedStorageUnit,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         AllProductsRoute.name,
         args: AllProductsRouteArgs(
           selectedRoom: selectedRoom,
           selectedStorageUnit: selectedStorageUnit,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AllProductsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllProductsRouteArgs>(
        orElse: () => const AllProductsRouteArgs(),
      );
      return AllProductsScreen(
        selectedRoom: args.selectedRoom,
        selectedStorageUnit: args.selectedStorageUnit,
        key: args.key,
      );
    },
  );
}

class AllProductsRouteArgs {
  const AllProductsRouteArgs({
    this.selectedRoom,
    this.selectedStorageUnit,
    this.key,
  });

  final Room? selectedRoom;

  final StorageUnit? selectedStorageUnit;

  final Key? key;

  @override
  String toString() {
    return 'AllProductsRouteArgs{selectedRoom: $selectedRoom, selectedStorageUnit: $selectedStorageUnit, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AllProductsRouteArgs) return false;
    return selectedRoom == other.selectedRoom &&
        selectedStorageUnit == other.selectedStorageUnit &&
        key == other.key;
  }

  @override
  int get hashCode =>
      selectedRoom.hashCode ^ selectedStorageUnit.hashCode ^ key.hashCode;
}

/// generated route for
/// [BarcodeScannerScreen]
class BarcodeScannerRoute extends PageRouteInfo<BarcodeScannerRouteArgs> {
  BarcodeScannerRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        BarcodeScannerRoute.name,
        args: BarcodeScannerRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'BarcodeScannerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BarcodeScannerRouteArgs>(
        orElse: () => const BarcodeScannerRouteArgs(),
      );
      return BarcodeScannerScreen(key: args.key);
    },
  );
}

class BarcodeScannerRouteArgs {
  const BarcodeScannerRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BarcodeScannerRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BarcodeScannerRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [KitchenScreen]
class KitchenRoute extends PageRouteInfo<void> {
  const KitchenRoute({List<PageRouteInfo>? children})
    : super(KitchenRoute.name, initialChildren: children);

  static const String name = 'KitchenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const KitchenScreen();
    },
  );
}

/// generated route for
/// [ProductDetailsScreen]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    required int selectedProductId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         ProductDetailsRoute.name,
         args: ProductDetailsRouteArgs(
           selectedProductId: selectedProductId,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return ProductDetailsScreen(
        selectedProductId: args.selectedProductId,
        key: args.key,
      );
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({required this.selectedProductId, this.key});

  final int selectedProductId;

  final Key? key;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{selectedProductId: $selectedProductId, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailsRouteArgs) return false;
    return selectedProductId == other.selectedProductId && key == other.key;
  }

  @override
  int get hashCode => selectedProductId.hashCode ^ key.hashCode;
}

/// generated route for
/// [RecipesScreen]
class RecipesRoute extends PageRouteInfo<void> {
  const RecipesRoute({List<PageRouteInfo>? children})
    : super(RecipesRoute.name, initialChildren: children);

  static const String name = 'RecipesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RecipesScreen();
    },
  );
}

/// generated route for
/// [RoomDetailsScreen]
class RoomDetailsRoute extends PageRouteInfo<RoomDetailsRouteArgs> {
  RoomDetailsRoute({
    required Room selectedRoom,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         RoomDetailsRoute.name,
         args: RoomDetailsRouteArgs(selectedRoom: selectedRoom, key: key),
         initialChildren: children,
       );

  static const String name = 'RoomDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RoomDetailsRouteArgs>();
      return RoomDetailsScreen(selectedRoom: args.selectedRoom, key: args.key);
    },
  );
}

class RoomDetailsRouteArgs {
  const RoomDetailsRouteArgs({required this.selectedRoom, this.key});

  final Room selectedRoom;

  final Key? key;

  @override
  String toString() {
    return 'RoomDetailsRouteArgs{selectedRoom: $selectedRoom, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RoomDetailsRouteArgs) return false;
    return selectedRoom == other.selectedRoom && key == other.key;
  }

  @override
  int get hashCode => selectedRoom.hashCode ^ key.hashCode;
}

/// generated route for
/// [StorageUnitsDetailsScreen]
class StorageUnitsDetailsRoute
    extends PageRouteInfo<StorageUnitsDetailsRouteArgs> {
  StorageUnitsDetailsRoute({
    required Room selectedRoom,
    required StorageUnit selectedStorageUnit,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         StorageUnitsDetailsRoute.name,
         args: StorageUnitsDetailsRouteArgs(
           selectedRoom: selectedRoom,
           selectedStorageUnit: selectedStorageUnit,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'StorageUnitsDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StorageUnitsDetailsRouteArgs>();
      return StorageUnitsDetailsScreen(
        selectedRoom: args.selectedRoom,
        selectedStorageUnit: args.selectedStorageUnit,
        key: args.key,
      );
    },
  );
}

class StorageUnitsDetailsRouteArgs {
  const StorageUnitsDetailsRouteArgs({
    required this.selectedRoom,
    required this.selectedStorageUnit,
    this.key,
  });

  final Room selectedRoom;

  final StorageUnit selectedStorageUnit;

  final Key? key;

  @override
  String toString() {
    return 'StorageUnitsDetailsRouteArgs{selectedRoom: $selectedRoom, selectedStorageUnit: $selectedStorageUnit, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StorageUnitsDetailsRouteArgs) return false;
    return selectedRoom == other.selectedRoom &&
        selectedStorageUnit == other.selectedStorageUnit &&
        key == other.key;
  }

  @override
  int get hashCode =>
      selectedRoom.hashCode ^ selectedStorageUnit.hashCode ^ key.hashCode;
}
