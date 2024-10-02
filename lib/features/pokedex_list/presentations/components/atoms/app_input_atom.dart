import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors/gray_scale_color.dart';
import 'package:pokedex/core/theme/colors/identity_colors.dart';
import 'package:pokedex/core/theme/typography/app_typography.dart';

class AppInput extends TextFormField {
  AppInput({
    super.key,
    required super.onChanged,
    required this.hintText,
    required this.prefixIcon,
  }) : super(
          cursorColor: IdentityColors.primary.color,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTypography.regular(
              color: GrayScaleColor.medium.color,
              fontSize: 15,
            ),
            fillColor: GrayScaleColor.white.color,
            filled: true,
            isDense: true,
            contentPadding: const EdgeInsets.all(0),
            prefixIcon: Icon(
              prefixIcon,
              color: IdentityColors.primary.color,
              size: 20,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
        );

  final String hintText;
  final IconData prefixIcon;
}
