import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex/features/pokemon/data/data_sources/pokemon_data_source.dart';
import 'package:pokedex/features/pokemon/data/repositories/pokemon_repository_imp.dart';

import 'mocks/info_pokemon_response_mock.dart';
import 'mocks/species_pokemon_response_mock.dart';

class PokemonMock extends Mock implements Dio {}

void main() {
  PokemonMock _pokemonMock = PokemonMock();
  PokemonDataSource _pokemonDataSource = PokemonDataSource(_pokemonMock);
  PokemonRepositoryImp _pokemonRepositoryImp =
      PokemonRepositoryImp(_pokemonDataSource);

  test('Test result mapped getInfoPokemon', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    when(
      () => _pokemonMock.get(
        any(),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: jsonDecode(InfoPokemonResponseMock.response),
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ),
    );

    final userData = await _pokemonRepositoryImp.getInfoPokemon(idOrName: '1');
    var data;

    userData.fold(
      (l) => {},
      (r) => data = r,
    );

    expect(data.id, 1);
  });

  test('Test result mapped getSpeciesPokemon', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    when(
      () => _pokemonMock.get(
        any(),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: jsonDecode(SpeciesPokemonResponseMock.response),
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ),
    );

    final userData =
        await _pokemonRepositoryImp.getSpecificPokemon(idOrName: '1');
    var data;
    var expected =
        "A strange seed was\nplanted on its\nback at birth.\fThe plant sprouts\nand grows with\nthis POKéMON.";

    userData.fold(
      (l) => {},
      (r) => data = r,
    );

    expect(data, isNotNull);
  });
}
