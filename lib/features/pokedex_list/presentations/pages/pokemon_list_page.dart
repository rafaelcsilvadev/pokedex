import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';
import 'package:pokedex/features/pokedex_list/presentations/components/pokemon_type_button/pokemon_type_button.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PokemonTypeButton(
          onPressed: () {},
          pokemonTypeColor: PokemonTypeColors.dark,
          pokemonType: 'Poison',
        ),
      ),
    );
  }
}
