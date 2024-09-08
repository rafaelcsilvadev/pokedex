import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';
import 'package:pokedex/features/pokedex_list/presentations/components/pokemon_type_button/pokemon_type_button_component.dart';

class PokemonTypeButton extends StatelessWidget {
  final Function() onPressed;
  final String pokemonType;
  final PokemonTypeColors pokemonTypeColor;

  const PokemonTypeButton({
    super.key,
    required this.onPressed,
    required this.pokemonType,
    required this.pokemonTypeColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: PokemonTypeButtonComponent(
        onPressed: onPressed,
        pokemonType: pokemonType,
        pokemonTypeColor: pokemonTypeColor,
      ),
    );
  }
}
