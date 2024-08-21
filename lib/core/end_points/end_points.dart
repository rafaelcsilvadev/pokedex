class EndPoints {
  final String _path = 'https://pokeapi.co/api/v2';

  String pokemonInfo({required String idOrName}) => '$_path/pokemon/$idOrName';
  String pokemonSpecies({required int idPokemon}) => '$_path/pokemon-species/$idPokemon';
}
