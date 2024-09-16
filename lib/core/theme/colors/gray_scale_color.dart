import 'package:flutter/material.dart';

enum GrayScaleColor {
  dark,
  medium,
  light,
  background,
  white;

  

  Color get color => switch (this) {
        GrayScaleColor.dark => const Color(0xFF212121),
        GrayScaleColor.medium => const Color(0xFF666666),
        GrayScaleColor.light => const Color(0xFFE0E0E0),
        GrayScaleColor.background => const Color(0xFFEFEFEF),
        GrayScaleColor.white => const Color(0xFFFFFFFF)
      };
}
