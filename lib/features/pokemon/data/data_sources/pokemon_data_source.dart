import 'dart:async';

import 'package:dio/dio.dart';
import 'package:pokedex/core/end_points/end_points.dart';

class PokemonDataSource {
  PokemonDataSource(this._dio);

  final Dio _dio;
  final EndPoints _endPoints = EndPoints();

  Future<Map<String, dynamic>> getInfoPokemon(
      {
    required String idOrName,
  }) async {
    var response = await _dio.get(_endPoints.pokemonInfo(idOrName: idOrName));

    return response.data;
  }

  Future<Map<String, dynamic>> getSpeciesPokemon(
      {
    required int idPokemon,
  }) async {
    var response =
        await _dio.get(_endPoints.pokemonSpecies(idPokemon: idPokemon));

    return response.data;
  }
}
