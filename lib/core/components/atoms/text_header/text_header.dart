import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/typography/app_typography.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
  });

    const TextHeader.headline({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 32;

  const TextHeader.subtile1({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 16;

  const TextHeader.subtile2({
    super.key,
    required this.color,
    required this.text,
  }) : fontSize = 14;

  const TextHeader.subtile3({
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
