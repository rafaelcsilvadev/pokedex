import 'package:pokedex/core/exeptions/failure.dart';
import 'package:pokedex/features/pokemon/data/data_sources/pokemon_data_source.dart';
import 'package:pokedex/features/pokemon/data/dtos/info_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/species_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokedex/features/pokemon/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImp implements PokemonRepository {
  PokemonRepositoryImp(this._pokemonDataSource);

  final PokemonDataSource _pokemonDataSource;

  Future<InfoPokemonDto?> getInfoPokemon({
    required String idOrName,
  }) async {
    try {
      Map<String, dynamic> response = await _pokemonDataSource.getInfoPokemon(
        idOrName: idOrName,
      );

      InfoPokemonDto infoPokemon = InfoPokemonDto.fromMap(response);

      return infoPokemon;
    } on Exception catch (e) {
      Failure.error(
        name: 'getInfoPokemon',
        message: e.toString(),
      );

      return null;
    }
  }

  Future<SpeciesPokemonDto?> getSpeciesPokemon({
    required int idPokemon,
  }) async {
    try {
      Map<String, dynamic> response =
          await _pokemonDataSource.getSpeciesPokemon(
        idPokemon: idPokemon,
      );

      SpeciesPokemonDto speciesPokemon = SpeciesPokemonDto.fromMap(response);

      return speciesPokemon;
    } catch (e) {
      Failure.error(
        name: 'getSpeciesPokemon',
        message: 'Not Found',
      );

      return null;
    }
  }

  @override
  Future<PokemonEntity?> getSpecificPokemon({
    required String idOrName,
  }) async {
    InfoPokemonDto? infoPokemonResponse = await getInfoPokemon(
      idOrName: idOrName,
    );

    if (infoPokemonResponse == null) {
      return null;
    }

    SpeciesPokemonDto? speciesPokemonResponse = await getSpeciesPokemon(
      idPokemon: infoPokemonResponse.id,
    );

    if (speciesPokemonResponse == null) {
      return null;
    }

    PokemonDto pokemon = PokemonDto.fromMap(
      infoPokemon: infoPokemonResponse,
      speciesPokemon: speciesPokemonResponse,
    );

    return pokemon;
  }
}
