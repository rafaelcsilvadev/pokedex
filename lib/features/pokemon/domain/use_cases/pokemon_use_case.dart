import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository.dart';

class PokemonUseCase {
  PokemonUseCase(this._pokemonRepository);

  final PokemonRepository _pokemonRepository;

  Future<PokemonEntity?> getSpecificPokemon({
    required String idOrName,
  }) async {
    return await _pokemonRepository.getSpecificPokemon(idOrName: idOrName);
  }
}
