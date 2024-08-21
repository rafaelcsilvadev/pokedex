import 'dart:async';

import 'package:dio/dio.dart';
import 'package:pokedex/core/end_points/end_points.dart';

class PokemonDataSource {
  final Dio _dio;
  final EndPoints _endPoints = EndPoints();

  PokemonDataSource(this._dio);

  Future<Map<String, dynamic>> getInfoPokemon(
      {required String idOrName}) async {
    var response = await _dio.get(_endPoints.pokemonInfo(idOrName: idOrName));

    return response.data;
  }

  Future<Map<String, dynamic>> getSpeciesPokemon(
      {required int idPokemon}) async {
    var response =
        await _dio.get(_endPoints.pokemonSpecies(idPokemon: idPokemon));

    return response.data;
  }
}
