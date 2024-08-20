class EndPoints {
  final String _path = 'https://pokeapi.co/api/v2/';

  String pokemon({required String idOrName}) => '$_path/pokemon/$idOrName';
  String pokemonSpecies({required String idPokemon}) => '$_path/pokemon/$idPokemon';
}
