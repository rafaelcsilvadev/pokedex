import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum PokemonTypeColors {
  bug(
    type: 'bug',
    color: Color(0xFFA7B723),
  ),
  dark(
    type: 'dark',
    color: Color(0xFF75574C),
  ),
  dragon(
    type: 'dragon',
    color: Color(0xFF7037FF),
  ),
  electric(
    type: 'electric',
    color: Color(0xFFF9CF30),
  ),
  fairy(
    type: 'fairy',
    color: Color(0xFFE69EAC),
  ),
  flighting(
    type: 'flighting',
    color: Color(0xFFC12239),
  ),
  fire(
    type: 'fire',
    color: Color(0xFFF57D31),
  ),
  flying(
    type: 'flying',
    color: Color(0xFF70559B),
  ),
  ghost(
    type: 'ghost',
    color: Color(0xFFAAA67F),
  ),
  normal(
    type: 'normal',
    color: Color(0xFF74CB48),
  ),
  grass(
    type: 'grass',
    color: Color(0xFFDEC16B),
  ),
  ground(
    type: 'ground',
    color: Color(0xFFDC0A2D),
  ),
  ice(
    type: 'ice',
    color: Color(0xFF9AD6DF),
  ),
  poison(
    type: 'poison',
    color: Color(0xFFA43E9E),
  ),
  psychic(
    type: 'psychic',
    color: Color(0xFFFB5584),
  ),
  rock(
    type: 'rock',
    color: Color(0xFFB69E31),
  ),
  steel(
    type: 'steel',
    color: Color(0xFFB7B9D0),
  ),
  water(
    type: 'water',
    color: Color(0xFF6493EB),
  );

  final String type;
  final Color color;

  const PokemonTypeColors({required this.type, required this.color});

  Color get bugColor => PokemonTypeColors.bug.color;
  Color get darkColor => PokemonTypeColors.dark.color;
  Color get dragonColor => PokemonTypeColors.dragon.color;
  Color get electricColor => PokemonTypeColors.electric.color;
  Color get fairyColor => PokemonTypeColors.fairy.color;
  Color get flightingColor => PokemonTypeColors.flighting.color;
  Color get fireColor => PokemonTypeColors.fire.color;
  Color get flyingColor => PokemonTypeColors.flying.color;
  Color get ghostColor => PokemonTypeColors.ghost.color;
  Color get normalColor => PokemonTypeColors.normal.color;
  Color get grassColor => PokemonTypeColors.grass.color;
  Color get groundColor => const Color(0xFFDC0A2D);
  Color get iceColor => PokemonTypeColors.ice.color;
  Color get poisonColor => PokemonTypeColors.poison.color;
  Color get psychicColor => PokemonTypeColors.psychic.color;
  Color get rockColor => PokemonTypeColors.rock.color;
  Color get steelColor => PokemonTypeColors.steel.color;
  Color get waterColor => PokemonTypeColors.water.color;      
}