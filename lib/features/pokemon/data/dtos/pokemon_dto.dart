import 'package:pokedex/features/pokemon/data/dtos/info_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/dtos/species_pokemon_dto.dart';
import 'package:pokedex/features/pokemon/domain/entities/pokemon_entity.dart';

class PokemonDto extends PokemonEntity {
  PokemonDto({
    required super.id,
    required super.attack,
    required super.defense,
    required super.description,
    required super.height,
    required super.healthPoints,
    required super.image,
    required super.moves,
    required super.name,
    required super.specialDefense,
    required super.speed,
    required super.specialAttack,
    required super.type,
    required super.weight,
  });

  factory PokemonDto.fromMap({
    required InfoPokemonDto infoPokemon,
    required SpeciesPokemonDto speciesPokemon,
  }) {
    return PokemonDto(
      id: infoPokemon.id,
      height: infoPokemon.height,
      weight: infoPokemon.weight,
      type: infoPokemon.type,
      healthPoints: infoPokemon.healthPoints,
      attack: infoPokemon.attack,
      defense: infoPokemon.defense,
      specialAttack: infoPokemon.specialAttack,
      specialDefense: infoPokemon.specialDefense,
      speed: infoPokemon.speed,
      name: infoPokemon.name,
      image: infoPokemon.image,
      moves: infoPokemon.moves,
      description: speciesPokemon.description,
    );
  }

  toMap({
    required InfoPokemonDto infoPokemon,
    required SpeciesPokemonDto speciesPokemon,
  }) =>
      {
        'id': infoPokemon.id,
        'height': infoPokemon.height,
        'weight': infoPokemon.weight,
        'type': infoPokemon.type,
        'healthPoints': infoPokemon.healthPoints,
        'attack': infoPokemon.attack,
        'defense': infoPokemon.defense,
        'specialAttack': infoPokemon.specialAttack,
        'specialDefense': infoPokemon.specialDefense,
        'speed': infoPokemon.speed,
        'name': infoPokemon.name,
        'image': infoPokemon.image,
        'moves': infoPokemon.moves,
        'description': speciesPokemon.description,
      };
}
