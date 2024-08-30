import 'package:flutter/material.dart';

enum GrayScaleColor {
  dark(color: Color(0xFF212121)),
  medium(color: Color(0xFF666666)),
  light(color: Color(0xFFE0E0E0)),
  background(color: Color(0xFFEFEFEF)),
  white(color: Color(0xFFFFFFFF));

  final Color color;

  const GrayScaleColor({required this.color});

  static Color get darkColor => GrayScaleColor.dark.color;
  Color get mediumColor => GrayScaleColor.medium.color;
  Color get lightColor => GrayScaleColor.light.color;
  Color get backgroundColor => GrayScaleColor.background.color;
  Color get whiteColor => GrayScaleColor.white.color;
}
