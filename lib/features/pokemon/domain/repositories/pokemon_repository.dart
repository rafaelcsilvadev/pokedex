import 'package:fpdart/fpdart.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<Either<Exception, PokemonEntity>> getSpecificPokemon({required String idOrName});
}
