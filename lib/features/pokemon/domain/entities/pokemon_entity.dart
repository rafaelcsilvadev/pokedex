import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';

class PokemonEntity {
  String id;
  String name;
  PokemonTypeColors? color;
  Uri image;
  List<String> type;
  double weight;
  double height;
  List<String> moves;
  String description;
  double healthPoints;
  double attack;
  double defense;
  double specialAttack;
  double specialDefense;
  double speed;

  PokemonEntity({
    required this.id,
    required this.attack,
    this.color,
    required this.defense,
    required this.description,
    required this.height,
    required this.healthPoints,
    required this.image,
    required this.moves,
    required this.name,
    required this.specialDefense,
    required this.speed,
    required this.specialAttack,
    required this.type,
    required this.weight,
  });

  selectColorByType() {
    PokemonTypeColorsMethods pokemonTypeColors = PokemonTypeColorsMethods();

    color = pokemonTypeColors.getColorByString(string: type[0]);
  }
}
