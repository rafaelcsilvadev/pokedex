import 'package:flutter/material.dart';
import 'package:pokedex/core/components/text_header/text_header.dart';
import 'package:pokedex/core/theme/colors/gray_scale_color.dart';
import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';

class PokemonTypeButtonComponent extends ElevatedButton {
  final PokemonTypeColors pokemonTypeColor;
  final String pokemonType;

  PokemonTypeButtonComponent({
    super.key,
    required super.onPressed,
    required this.pokemonTypeColor,
    required this.pokemonType,
  }) : super(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: pokemonTypeColor.color,
          ),
          child: PokemonTypeText(
            pokemonType: pokemonType,
          ),
        );
}

class PokemonTypeText extends TextHeader {
  final String pokemonType;

  PokemonTypeText({
    super.key,
    required this.pokemonType,
  }) : super.subtile3(
          color: GrayScaleColor.white.color,
          text: pokemonType,
        );
}
