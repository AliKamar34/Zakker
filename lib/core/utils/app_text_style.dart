import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle styleRegular10(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 10),

      fontWeight: FontWeight.w400,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 500;
  } else {
    return width / 900;
  }
}
