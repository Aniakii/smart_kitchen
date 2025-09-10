import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.textPrimary),
    bodyMedium: TextStyle(fontSize: 14, color: AppColors.textSecondary),
    labelLarge: TextStyle(
      fontSize: 22,
      color: AppColors.textPrimary,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(fontSize: 18, color: AppColors.secondaryVariant),
    labelSmall: TextStyle(fontSize: 16, color: AppColors.secondaryVariant),
    displaySmall: TextStyle(
      fontSize: 16,
      color: AppColors.error,
      fontWeight: FontWeight.bold,
    ),
  );
}
