import 'package:flutter/material.dart';
import 'package:pokedex/features/pokedex_list/presentations/components/atoms/search_input.dart';

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
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(
            height: 40,
            child: AppInput(
              onChanged: (value) => {},
              hintText: 'Search',
              prefixIcon: Icons.search,
            ),
          ),
        ),
      ),
    );
  }
}
