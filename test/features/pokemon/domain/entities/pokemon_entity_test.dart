import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';

void main() {
    PokemonEntity pokemonEntity = PokemonEntity(
    type: ['bug', 'poison'],
    attack: 0,
    defense: 0,
    description: '',
    height: 0,
    healthPoints: 0,
    id: 0,
    image: Uri.parse(''),
    moves: ['', ''],
    name: '',
    specialAttack: 0,
    specialDefense: 0,
    speed: 0,
    weight: 0,
  );

  test('Get colors by type', () {
    expect(pokemonEntity.color, PokemonTypeColors.bug.color);
  });
}
