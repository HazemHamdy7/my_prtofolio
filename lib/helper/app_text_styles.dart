import 'package:flutter/material.dart';

abstract class AppTextStyles {
  TextStyle get titleSimeBold;
  TextStyle get bodyMdMedium;
  TextStyle get titleLgBold;
  TextStyle get titleMdMedium;
  TextStyle get bodyleLgBold;
  TextStyle get bodyLgMedium;
}

class SmallTextStyles extends AppTextStyles {
  @override
  TextStyle get titleSimeBold =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  @override
  TextStyle get bodyMdMedium =>
      const TextStyle(fontSize: 13, fontWeight: FontWeight.w500);
  @override
  TextStyle get titleLgBold =>
      const TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
  @override
  TextStyle get titleMdMedium =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  @override
  TextStyle get bodyleLgBold =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  @override
  TextStyle get bodyLgMedium =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
}

class LargeTextStyles extends AppTextStyles {
  @override
  TextStyle get titleSimeBold =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  @override
  TextStyle get bodyMdMedium =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  @override
  TextStyle get titleLgBold =>
      const TextStyle(fontSize: 32, fontWeight: FontWeight.w600);
  @override
  TextStyle get titleMdMedium =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  @override
  TextStyle get bodyleLgBold =>
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  @override
  TextStyle get bodyLgMedium =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
}
