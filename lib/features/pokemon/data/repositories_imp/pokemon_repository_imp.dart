import 'package:fpdart/fpdart.dart';
import 'package:pokedex/features/pokemon/data/data_sources/pokemon_data_source.dart';
import 'package:pokedex/features/pokemon/data/dtos/info_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/species_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImp implements PokemonRepository {
  final PokemonDataSource _pokemonDataSource;

  PokemonRepositoryImp(this._pokemonDataSource);

  Future<Either<Exception, InfoPokemonDto>> _getInfoPokemon({
    required String idOrName,
  }) async {
    try {
      var response =
          await _pokemonDataSource.getInfoPokemon(idOrName: idOrName);

      return right(InfoPokemonDto.fromMap(response));
    } on Exception catch (e) {
      return left(e);
    }
  }

  Future<Either<Exception, SpeciesPokemonDto>> _getSpeciesPokemon({
    required String idPokemon,
  }) async {
    try {
      var response =
          await _pokemonDataSource.getSpeciesPokemon(idPokemon: idPokemon);

      return right(SpeciesPokemonDto.fromMap(response));
    } on Exception catch (e) {
      return left(e);
    }
  }

  @override
  Future<PokemonEntity?> getSpecificPokemon({required String idOrName}) async {
    SpeciesPokemonDto? speciesPokemon;
    InfoPokemonDto? infoPokemon;

    Either<Exception, InfoPokemonDto> infoPokemonResponse =
        await _getInfoPokemon(idOrName: idOrName);

    infoPokemonResponse.fold((l) => throw Exception(), (r) async {
      Either<Exception, SpeciesPokemonDto> speciesPokemonResponse =
          await _getSpeciesPokemon(idPokemon: r.id);
      infoPokemon = r;
      speciesPokemonResponse.fold((l) => throw Exception(), (r) {
        speciesPokemon = r;
      });
    });

    if (infoPokemon != null && speciesPokemon != null) {
      return PokemonDto.fromMap(
          infoPokemon: infoPokemon!, speciesPokemon: speciesPokemon!);
    } else {
      return null;
    }
  }
}
