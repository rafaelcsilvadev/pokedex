import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors/gray_scale_color.dart';

class AppText extends StatelessWidget {
  const AppText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Teste',
      style: TextStyle(
        color: GrayScaleColor.darkColor,
      )
    );
  }
}
