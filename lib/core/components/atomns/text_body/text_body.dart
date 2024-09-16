import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  const TextBody({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  const TextBody.body1({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 16;

  const TextBody.body2({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 14;

  const TextBody.body3({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 12;

  const TextBody.caption({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 8;

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
