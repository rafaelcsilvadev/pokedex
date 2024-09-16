import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum PokemonTypeColors {
  bug,
  dark,
  dragon,
  electric,
  fairy,
  flighting,
  fire,
  flying,
  ghost,
  normal,
  grass,
  ground,
  ice,
  poison,
  psychic,
  rock,
  steel,
  water;



  Color get color => switch (this) {
        PokemonTypeColors.bug => const Color(0xFFA7B723),
        PokemonTypeColors.dark => const Color(0xFF75574C),
        PokemonTypeColors.dragon => const Color(0xFF7037FF),
        PokemonTypeColors.electric => const Color(0xFFF9CF30),
        PokemonTypeColors.fairy => const Color(0xFFE69EAC),
        PokemonTypeColors.flighting => const Color(0xFFC12239),
        PokemonTypeColors.fire => const Color(0xFFF57D31),
        PokemonTypeColors.flying => const Color(0xFFAAA67F),
        PokemonTypeColors.ghost => const Color(0xFF70559B),
        PokemonTypeColors.normal => const Color(0xFFAAA67F),
        PokemonTypeColors.grass => const Color(0xFF74CB48),
        PokemonTypeColors.ground => const Color(0xFFDC0A2D),
        PokemonTypeColors.ice => const Color(0xFF9AD6DF),
        PokemonTypeColors.poison => const Color(0xFFA43E9E),
        PokemonTypeColors.psychic => const Color(0xFFFB5584),
        PokemonTypeColors.rock => const Color(0xFFB69E31),
        PokemonTypeColors.steel => const Color(0xFFB7B9D0),
        PokemonTypeColors.water => const Color(0xFF6493EB),
      };

  String get type => switch (this) {
        PokemonTypeColors.bug => 'bug',
        PokemonTypeColors.dark => 'dark',
        PokemonTypeColors.dragon => 'dragon',
        PokemonTypeColors.electric => 'electric',
        PokemonTypeColors.fairy => 'fairy',
        PokemonTypeColors.flighting => 'flighting',
        PokemonTypeColors.fire => 'fire',
        PokemonTypeColors.flying => 'flying',
        PokemonTypeColors.ghost => 'ghost',
        PokemonTypeColors.normal => 'normal',
        PokemonTypeColors.grass => 'grass',
        PokemonTypeColors.ground => 'ground',
        PokemonTypeColors.ice => 'ice',
        PokemonTypeColors.poison => 'poison',
        PokemonTypeColors.psychic => 'psychic',
        PokemonTypeColors.rock => 'rock',
        PokemonTypeColors.steel => 'steel',
        PokemonTypeColors.water => 'water',
      };
}