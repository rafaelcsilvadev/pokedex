import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex/features/pokemon/data/data_sources/pokemon_data_source.dart';
import 'package:pokedex/features/pokemon/data/dtos/info_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/species_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/repositories/pokemon_repository_imp.dart';
import 'mocks/info_pokemon_response_mock.dart';
import 'mocks/species_pokemon_response_mock.dart';

class PokemonMock extends Mock implements Dio {}

void main() {
  PokemonMock pokemonMock = PokemonMock();
  PokemonDataSource pokemonDataSource = PokemonDataSource(pokemonMock);
  PokemonRepositoryImp pokemonRepositoryImp =
      PokemonRepositoryImp(pokemonDataSource);

  test('Test result mapped getInfoPokemon', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    when(
      () => pokemonMock.get(
        any(),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: jsonDecode(InfoPokemonResponseMock.response),
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ),
    );

    final userData = await pokemonRepositoryImp.getInfoPokemon(idOrName: '1');
    InfoPokemonDto? data;

    userData.fold(
      (l) => {},
      (r) => data = r,
    );

    expect(data?.id, 1);
  });

  test('Test result mapped getSpeciesPokemon', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    when(
      () => pokemonMock.get(
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
        await pokemonRepositoryImp.getSpeciesPokemon(idPokemon: 1);
    SpeciesPokemonDto? data;
    var expected =
        "A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.";

    userData.fold(
      (l) => {},
      (r) => data = r,
    );

    expect(data?.description, expected);
  });
}
