import 'package:flutter/material.dart';
import 'package:my_prtofolio/style/app_colors.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      surface: AppColors.darkBackgroundColor,
      onSurface: Colors.grey[100] ?? Colors.white,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    appBarTheme: AppBarTheme(color: AppColors.gray),
  );
}
