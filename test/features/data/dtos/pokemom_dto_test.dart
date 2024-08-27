import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';
import 'package:pokedex/features/pokemon/data/dtos/info_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/species_pokemon_dto.dart';

void main() {
  test('Teste init color with PokemonDto fromMap constructor', () {
    InfoPokemonDto infoPokemonDto = InfoPokemonDto(
      attack: 0,
      defense: 0,
      healthPoints: 0,
      height: 0,
      id: 0,
      image: Uri.parse('uri'),
      moves: [],
      name: '',
      specialAttack: 0,
      specialDefense: 0,
      speed: 0,
      type: ['bug', 'poison'],
      weight: 0,
    );

    SpeciesPokemonDto speciesPokemonDto = SpeciesPokemonDto(
      description: '',
    );

    var pokemon = PokemonDto.fromMap(
      infoPokemon: infoPokemonDto,
      speciesPokemon: speciesPokemonDto,
    );

    expect(pokemon.color, PokemonTypeColors.bug);
  });
}
