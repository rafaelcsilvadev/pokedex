import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/features/pokedex_list/presentations/pages/pokemon_list_page.dart';
import 'package:pokedex/features/pokedex_list/routes_module.dart';

class PokedexListModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      PokedexListRoutes.pokemon_list,
      child: (_) => const PokemonListPage(),
    );
  } 
}
