import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/app/theme/app_colors.dart';

import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.secondaryVariant,
      primaryContainer: AppColors.primaryVariant,
      secondary: AppColors.secondary,
      onSecondary: AppColors.surface,
      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
      error: AppColors.error,
      onError: AppColors.surface,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.textPrimary),
      actionsIconTheme: IconThemeData(color: AppColors.textPrimary),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.secondary,
      foregroundColor: AppColors.textPrimary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary,
      selectedItemColor: AppColors.secondaryVariant,
      unselectedItemColor: AppColors.primaryVariant,
    ),
    textTheme: AppTextTheme.textTheme,
    iconTheme: const IconThemeData(color: AppColors.textPrimary),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: WidgetStateProperty.all(AppColors.textPrimary),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textPrimary,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.secondary),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: AppColors.secondaryVariant,
      unselectedLabelColor: AppColors.primaryVariant,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.secondaryVariant, width: 3),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.primaryVariant,
      hintStyle: TextStyle(color: AppColors.background),
      labelStyle: TextStyle(color: AppColors.textPrimary),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    ),

    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.error,
      contentTextStyle: TextStyle(color: AppColors.background),
      actionTextColor: AppColors.primary,
      behavior: SnackBarBehavior.floating,
      elevation: 4,
    ),
    dialogTheme: ThemeData().dialogTheme.copyWith(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        fontSize: 20,
      ),
    ),
    cardTheme: CardThemeData().copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: AppColors.textPrimary,
      ),
    ),
    hintColor: AppColors.primaryVariant,
  );
}
