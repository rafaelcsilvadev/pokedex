import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';

class PokemonEntity {
  int id;
  String name;
  PokemonTypeColors? color;
  Uri image;
  List<String> type;
  double weight;
  double height;
  List<String> moves;
  String description;
  int healthPoints;
  int attack;
  int defense;
  int specialAttack;
  int specialDefense;
  int speed;

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
