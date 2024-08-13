import 'package:flutter/material.dart';

enum AppColors {
  primary,
  surface,
  secondary,
  error;

  Color get light => switch (this) {
        AppColors.primary => const Color(0xFF9232EB),
        AppColors.surface => const Color(0xFFFFFFFF),
        AppColors.error => const Color(0xFFF70303),
        AppColors.secondary => const Color(0xFF000000),
      };

  Color get dark => switch (this) {
        AppColors.primary => const Color(0xFF9232EB),
        AppColors.surface => const Color(0xFF000000),
        AppColors.error => const Color(0xFFF70303),
        AppColors.secondary => const Color(0xFFFFFFFF),
      };
}

