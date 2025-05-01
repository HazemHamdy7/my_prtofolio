import 'package:flutter/material.dart';

//  sacleFactor
//  responsiveFontSize
//  (min , max) fontSize

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double sacleFactor = getSacleFactor(context);
  double responsiveFontSize = fontSize * sacleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.25;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getSacleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
