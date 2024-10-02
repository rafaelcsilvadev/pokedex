import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/typography/app_typography.dart';

class TextBodyAtom extends StatelessWidget {
  const TextBodyAtom({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

  const TextBodyAtom.body1({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 16;

  const TextBodyAtom.body2({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 14;

  const TextBodyAtom.body3({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 12;

  const TextBodyAtom.body4({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 10;

  const TextBodyAtom.caption({
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
      style: AppTypography.regular(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
