import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/typography/app_typography.dart';

class TextHeaderAtom extends StatelessWidget {
  const TextHeaderAtom({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

    const TextHeaderAtom.headline({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 32;

  const TextHeaderAtom.subtile1({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 16;

  const TextHeaderAtom.subtile2({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 14;

  const TextHeaderAtom.subtile3({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 12;

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTypography.bold(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
