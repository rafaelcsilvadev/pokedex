import 'package:flutter/material.dart';

abstract class InnerShadow {
  static List<BoxShadow> get thin => [
        const BoxShadow(
            color: Colors.black,
            blurRadius: 3,
            spreadRadius: 0,
            offset: Offset(0, 1)),
        const BoxShadow(
            color: Colors.white,
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 1)),
      ];
}
