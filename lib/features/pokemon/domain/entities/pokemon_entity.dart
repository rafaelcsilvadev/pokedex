import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';

class PokemonEntity {
  String id;
  String name;
  PokemonTypeColors? color;
  Uri image;
  String type;
  double weight;
  double height;
  List<String> moves;
  String description;
  double hp;
  double atk;
  double def;
  double stack;
  double sdef;
  double spd;

  PokemonEntity({
    required this.id,
    required this.atk,
    this.color,
    required this.def,
    required this.description,
    required this.height,
    required this.hp,
    required this.image,
    required this.moves,
    required this.name,
    required this.sdef,
    required this.spd,
    required this.stack,
    required this.type,
    required this.weight,
  });

  selectColorByType() {
    PokemonTypeColorsMethods pokemonTypeColors = PokemonTypeColorsMethods();

    color = pokemonTypeColors.getColorByString(string: type);
  }
}
