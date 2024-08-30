import 'package:flutter/material.dart';

class TextBodyComponent extends StatelessWidget {
  const TextBodyComponent({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Poppins Regular',
        fontSize: fontSize,
      ),
    );
  }
}
