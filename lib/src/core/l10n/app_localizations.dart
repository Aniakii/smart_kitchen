import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Smart Kitchen'**
  String get appName;

  /// No description provided for @kitchenTitle.
  ///
  /// In en, this message translates to:
  /// **'Kitchen'**
  String get kitchenTitle;

  /// No description provided for @recipesTitle.
  ///
  /// In en, this message translates to:
  /// **'Recipes'**
  String get recipesTitle;

  /// No description provided for @roomsTitle.
  ///
  /// In en, this message translates to:
  /// **'Rooms'**
  String get roomsTitle;

  /// No description provided for @storageUnitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Storage units'**
  String get storageUnitsTitle;

  /// No description provided for @allProductsTitle.
  ///
  /// In en, this message translates to:
  /// **'All Products'**
  String get allProductsTitle;

  /// No description provided for @categoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get categoryTitle;

  /// No description provided for @barcodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan product'**
  String get barcodeTitle;

  /// No description provided for @modifyProductTitle.
  ///
  /// In en, this message translates to:
  /// **'Modify Product'**
  String get modifyProductTitle;

  /// No description provided for @addProductTitle.
  ///
  /// In en, this message translates to:
  /// **'Add new product'**
  String get addProductTitle;

  /// No description provided for @categoryPrefix.
  ///
  /// In en, this message translates to:
  /// **'category:'**
  String get categoryPrefix;

  /// No description provided for @roomLabel.
  ///
  /// In en, this message translates to:
  /// **'room'**
  String get roomLabel;

  /// No description provided for @storageUnitLabel.
  ///
  /// In en, this message translates to:
  /// **'storage unit'**
  String get storageUnitLabel;

  /// No description provided for @productLabel.
  ///
  /// In en, this message translates to:
  /// **'product'**
  String get productLabel;

  /// No description provided for @productNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Product name'**
  String get productNameLabel;

  /// No description provided for @amountLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amountLabel;

  /// No description provided for @inputDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Input date'**
  String get inputDateLabel;

  /// No description provided for @expiryDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Expiry date'**
  String get expiryDateLabel;

  /// No description provided for @detailsLabel.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get detailsLabel;

  /// No description provided for @storageLabel.
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get storageLabel;

  /// No description provided for @barcodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Scan barcode'**
  String get barcodeLabel;

  /// No description provided for @noRoomLabel.
  ///
  /// In en, this message translates to:
  /// **'No room'**
  String get noRoomLabel;

  /// No description provided for @noStorageUnitLabel.
  ///
  /// In en, this message translates to:
  /// **'No storage unit'**
  String get noStorageUnitLabel;

  /// No description provided for @notIncludedLabel.
  ///
  /// In en, this message translates to:
  /// **'Not included'**
  String get notIncludedLabel;

  /// No description provided for @noDateLabel.
  ///
  /// In en, this message translates to:
  /// **'No date selected'**
  String get noDateLabel;

  /// No description provided for @newRoomHint.
  ///
  /// In en, this message translates to:
  /// **'Add a new room'**
  String get newRoomHint;

  /// No description provided for @newStorageUnitHint.
  ///
  /// In en, this message translates to:
  /// **'Add a new storage unit'**
  String get newStorageUnitHint;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchHint;

  /// No description provided for @deleteButton.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteButton;

  /// No description provided for @cancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// No description provided for @updateProductButton.
  ///
  /// In en, this message translates to:
  /// **'Update product'**
  String get updateProductButton;

  /// No description provided for @addProductButton.
  ///
  /// In en, this message translates to:
  /// **'Add product'**
  String get addProductButton;

  /// No description provided for @dateButton.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get dateButton;

  /// No description provided for @errorBarcode.
  ///
  /// In en, this message translates to:
  /// **'Barcode not detected'**
  String get errorBarcode;

  /// No description provided for @errorInternet.
  ///
  /// In en, this message translates to:
  /// **'No internet access. Couldn\\\'t fetch product info'**
  String get errorInternet;

  /// No description provided for @errorProductInfo.
  ///
  /// In en, this message translates to:
  /// **'Couldn\\\'t find info about the product :('**
  String get errorProductInfo;

  /// No description provided for @errorInvalidInfo.
  ///
  /// In en, this message translates to:
  /// **'Some information are invalid'**
  String get errorInvalidInfo;

  /// No description provided for @errorNoValue.
  ///
  /// In en, this message translates to:
  /// **'Enter value'**
  String get errorNoValue;

  /// No description provided for @errorEmptyName.
  ///
  /// In en, this message translates to:
  /// **'Name cannot be empty'**
  String get errorEmptyName;

  /// No description provided for @deleteProductAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this product?'**
  String get deleteProductAlertTitle;

  /// No description provided for @deleteProductAlertContent.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone.'**
  String get deleteProductAlertContent;

  /// No description provided for @deleteContainerAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this {deletedObject}?'**
  String deleteContainerAlertTitle(String deletedObject);

  /// No description provided for @deleteContainerAlertContent.
  ///
  /// In en, this message translates to:
  /// **'If you delete this {deletedObject}, other components that rely on this {deletedObject} will be also deleted.'**
  String deleteContainerAlertContent(String deletedObject);

  /// No description provided for @successCreateRoom.
  ///
  /// In en, this message translates to:
  /// **'Room successfully created!'**
  String get successCreateRoom;

  /// No description provided for @successDeleteRoom.
  ///
  /// In en, this message translates to:
  /// **'Room successfully deleted!'**
  String get successDeleteRoom;

  /// No description provided for @successUpdateRoom.
  ///
  /// In en, this message translates to:
  /// **'Room successfully updated!'**
  String get successUpdateRoom;

  /// No description provided for @exceptionFetchRooms.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch rooms:'**
  String get exceptionFetchRooms;

  /// No description provided for @exceptionEditRoom.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit room:'**
  String get exceptionEditRoom;

  /// No description provided for @exceptionCreateRoom.
  ///
  /// In en, this message translates to:
  /// **'Failed to create room:'**
  String get exceptionCreateRoom;

  /// No description provided for @exceptionDeleteRoom.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete room:'**
  String get exceptionDeleteRoom;

  /// No description provided for @exceptionUpdateRoom.
  ///
  /// In en, this message translates to:
  /// **'Failed to update room:'**
  String get exceptionUpdateRoom;

  /// No description provided for @successCreateStorageUnit.
  ///
  /// In en, this message translates to:
  /// **'Storage unit successfully created!'**
  String get successCreateStorageUnit;

  /// No description provided for @successDeleteStorageUnit.
  ///
  /// In en, this message translates to:
  /// **'Storage unit successfully deleted!'**
  String get successDeleteStorageUnit;

  /// No description provided for @successUpdateStorageUnit.
  ///
  /// In en, this message translates to:
  /// **'Storage unit successfully updated!'**
  String get successUpdateStorageUnit;

  /// No description provided for @exceptionFetchStorageUnits.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch storage units:'**
  String get exceptionFetchStorageUnits;

  /// No description provided for @exceptionEditStorageUnit.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit storage unit:'**
  String get exceptionEditStorageUnit;

  /// No description provided for @exceptionCreateStorageUnit.
  ///
  /// In en, this message translates to:
  /// **'Failed to create storage unit:'**
  String get exceptionCreateStorageUnit;

  /// No description provided for @exceptionDeleteStorageUnit.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete storage unit:'**
  String get exceptionDeleteStorageUnit;

  /// No description provided for @exceptionUpdateStorageUnit.
  ///
  /// In en, this message translates to:
  /// **'Failed to update storage unit:'**
  String get exceptionUpdateStorageUnit;

  /// No description provided for @successCreateProducts.
  ///
  /// In en, this message translates to:
  /// **'Product successfully created!'**
  String get successCreateProducts;

  /// No description provided for @successDeleteProduct.
  ///
  /// In en, this message translates to:
  /// **'Product successfully deleted!'**
  String get successDeleteProduct;

  /// No description provided for @successUpdateProduct.
  ///
  /// In en, this message translates to:
  /// **'Product successfully updated!'**
  String get successUpdateProduct;

  /// No description provided for @exceptionFetchProduct.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch products:'**
  String get exceptionFetchProduct;

  /// No description provided for @exceptionEditProduct.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit product:'**
  String get exceptionEditProduct;

  /// No description provided for @exceptionCreateProduct.
  ///
  /// In en, this message translates to:
  /// **'Product successfully created!'**
  String get exceptionCreateProduct;

  /// No description provided for @exceptionDeleteProduct.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete product:'**
  String get exceptionDeleteProduct;

  /// No description provided for @exceptionUpdateProduct.
  ///
  /// In en, this message translates to:
  /// **'Failed to update product:'**
  String get exceptionUpdateProduct;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
