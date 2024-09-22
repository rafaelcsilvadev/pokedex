import 'package:flutter/cupertino.dart';
import 'package:pokedex/core/theme/colors/pkemom_type_colors.dart';

class PokemonEntity {
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
  }) {
    color = _initColorByType();
  }

  int id;
  String name;
  Color? color;
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


  Color _initColorByType() {
    var element = PokemonTypeColors.values.firstWhere(
      (item) => item.type == type[0],
    );

    return element.color;
  }
}
