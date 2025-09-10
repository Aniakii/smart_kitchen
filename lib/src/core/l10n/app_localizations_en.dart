// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Smart Kitchen';

  @override
  String get kitchenTitle => 'Kitchen';

  @override
  String get recipesTitle => 'Recipes';

  @override
  String get roomsTitle => 'Rooms';

  @override
  String get storageUnitsTitle => 'Storage units';

  @override
  String get allProductsTitle => 'All Products';

  @override
  String get categoryTitle => 'Category';

  @override
  String get barcodeTitle => 'Scan product';

  @override
  String get modifyProductTitle => 'Modify Product';

  @override
  String get addProductTitle => 'Add new product';

  @override
  String get categoryPrefix => 'category:';

  @override
  String get roomLabel => 'room';

  @override
  String get storageUnitLabel => 'storage unit';

  @override
  String get productLabel => 'product';

  @override
  String get productNameLabel => 'Product name';

  @override
  String get amountLabel => 'Amount';

  @override
  String get inputDateLabel => 'Input date';

  @override
  String get expiryDateLabel => 'Expiry date';

  @override
  String get detailsLabel => 'Details';

  @override
  String get storageLabel => 'Storage';

  @override
  String get barcodeLabel => 'Scan barcode';

  @override
  String get noRoomLabel => 'No room';

  @override
  String get noStorageUnitLabel => 'No storage unit';

  @override
  String get notIncludedLabel => 'Not included';

  @override
  String get noDateLabel => 'No date selected';

  @override
  String get newRoomHint => 'Add a new room';

  @override
  String get newStorageUnitHint => 'Add a new storage unit';

  @override
  String get searchHint => 'Search';

  @override
  String get deleteButton => 'Delete';

  @override
  String get cancelButton => 'Cancel';

  @override
  String get updateProductButton => 'Update product';

  @override
  String get addProductButton => 'Add product';

  @override
  String get dateButton => 'Select date';

  @override
  String get errorBarcode => 'Barcode not detected';

  @override
  String get errorInternet =>
      'No internet access. Couldn\\\'t fetch product info';

  @override
  String get errorProductInfo => 'Couldn\\\'t find info about the product :(';

  @override
  String get errorInvalidInfo => 'Some information are invalid';

  @override
  String get errorNoValue => 'Enter value';

  @override
  String get errorEmptyName => 'Name cannot be empty';

  @override
  String get deleteProductAlertTitle =>
      'Are you sure you want to delete this product?';

  @override
  String get deleteProductAlertContent => 'This action cannot be undone.';

  @override
  String deleteContainerAlertTitle(String deletedObject) {
    return 'Are you sure you want to delete this $deletedObject?';
  }

  @override
  String deleteContainerAlertContent(String deletedObject) {
    return 'If you delete this $deletedObject, other components that rely on this $deletedObject will be also deleted.';
  }

  @override
  String get successCreateRoom => 'Room successfully created!';

  @override
  String get successDeleteRoom => 'Room successfully deleted!';

  @override
  String get successUpdateRoom => 'Room successfully updated!';

  @override
  String get exceptionFetchRooms => 'Failed to fetch rooms:';

  @override
  String get exceptionEditRoom => 'Failed to edit room:';

  @override
  String get exceptionCreateRoom => 'Failed to create room:';

  @override
  String get exceptionDeleteRoom => 'Failed to delete room:';

  @override
  String get exceptionUpdateRoom => 'Failed to update room:';

  @override
  String get successCreateStorageUnit => 'Storage unit successfully created!';

  @override
  String get successDeleteStorageUnit => 'Storage unit successfully deleted!';

  @override
  String get successUpdateStorageUnit => 'Storage unit successfully updated!';

  @override
  String get exceptionFetchStorageUnits => 'Failed to fetch storage units:';

  @override
  String get exceptionEditStorageUnit => 'Failed to edit storage unit:';

  @override
  String get exceptionCreateStorageUnit => 'Failed to create storage unit:';

  @override
  String get exceptionDeleteStorageUnit => 'Failed to delete storage unit:';

  @override
  String get exceptionUpdateStorageUnit => 'Failed to update storage unit:';

  @override
  String get successCreateProducts => 'Product successfully created!';

  @override
  String get successDeleteProduct => 'Product successfully deleted!';

  @override
  String get successUpdateProduct => 'Product successfully updated!';

  @override
  String get exceptionFetchProduct => 'Failed to fetch products:';

  @override
  String get exceptionEditProduct => 'Failed to edit product:';

  @override
  String get exceptionCreateProduct => 'Product successfully created!';

  @override
  String get exceptionDeleteProduct => 'Failed to delete product:';

  @override
  String get exceptionUpdateProduct => 'Failed to update product:';
}
