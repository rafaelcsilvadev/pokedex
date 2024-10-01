import 'package:flutter/material.dart';

class DropShadow extends BoxShadow {
  const DropShadow.thin()
      : super(
          blurRadius: 3,
          blurStyle: BlurStyle.normal,
          color: const Color(0xFF000000),
          offset: const Offset(0, 1),
          spreadRadius: 1,
        );
        
  const DropShadow.hard()
      : super(
          blurRadius: 12,
          blurStyle: BlurStyle.normal,
          color: const Color(0xFF000000),
          offset: const Offset(0, 3),
          spreadRadius: 3,
        );
}
