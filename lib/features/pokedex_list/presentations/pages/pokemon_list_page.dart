import 'package:flutter/material.dart';
import 'package:pokedex/features/pokedex_list/presentations/components/organisms/top_pokemon_list_organism.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
      body: SafeArea(
        child: TopPokemonListOrganism(),
      ),
    );
  }
}
