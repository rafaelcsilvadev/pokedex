import 'package:flutter/material.dart';

class AppTypography extends TextStyle {
  const AppTypography.bold({
    required super.color,
    required super.fontSize,
  }) : super(fontFamily: 'Poppins Bold');
  const AppTypography.regular({
    required super.color,
    required super.fontSize,
  }) : super(fontFamily: 'Poppins Regular');
}
