import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<PokemonEntity?> getSpecificPokemon({required String idOrName});
}
