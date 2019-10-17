import 'package:flutter/material.dart';

class AppStyles {

  static const marginTiny = 6.0;
  static const marginSmall = 12.0;
  static const marginMedium = 24.0;
  static const marginBig = 32.0;

  static const defaultBorderRadius = 10.0;

  static final roundedBorderShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius))
  );
}