import 'package:flutter/material.dart';

enum IdentityColors {
  primary(color: Color(0xFFDC0A2D));

  final Color color;

  const IdentityColors({required this.color});

  Color get primaryColor => IdentityColors.primary.color;
}
