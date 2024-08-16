import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';

void main() {
  test('Get colors by string', () {
    PokemonEntity pokemonEntity = PokemonEntity(
      type: 'bug',
      atk: 0,
      def: 0,
      description: '',
      height: 0,
      hp: 0,
      id: '',
      image: Uri.parse(''),
      moves: ['', ''],
      name: '',
      sdef: 0,
      spd: 0,
      stack: 0,
      weight: 0,
    );

    pokemonEntity.selectColorByType();

    expect(pokemonEntity.color, PokemonTypeColors.bug);
  });
}
