import 'package:flutter/material.dart';
import 'package:my_prtofolio/style/app_colors.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      surface: AppColors.darkBackgroundColor,
      outline: Colors.grey[800],
      outlineVariant: Colors.grey[700],
      onSurface: Colors.grey[300] ?? Colors.grey,
      onSurfaceVariant: Colors.grey[400],
      tertiary: Colors.grey[900],
    ),

    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBackgroundColor,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      actionsIconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
    ),
    iconTheme: IconThemeData(color: Colors.white),
    drawerTheme: DrawerThemeData(
      backgroundColor: AppColors.darkBackgroundColor,
    ),
  );
  static ThemeData get light => ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryColor,
      surface: Colors.grey[400] ?? Colors.white,
      outline: Colors.grey[300],
      outlineVariant: Colors.grey[200],
      onSurface: Colors.black,
      onSurfaceVariant: Colors.grey[600],
      tertiary: Colors.grey[100],
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      actionsIconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
    ),
    iconTheme: IconThemeData(color: Colors.black),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
  );
}
