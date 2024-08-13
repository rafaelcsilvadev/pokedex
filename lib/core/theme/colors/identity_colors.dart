import 'package:flutter/material.dart';

enum IdentityColors {
  primary;

  Color get identity => switch (this) {
        IdentityColors.primary => const Color(0xFFDC0A2D),
      };
}
