class InfoPokemonDto {
  int id;
  String name;
  Uri image;
  List<String> type;
  double weight;
  double height;
  List<String> moves;
  int healthPoints;
  int attack;
  int defense;
  int specialAttack;
  int specialDefense;
  int speed;

  InfoPokemonDto({
    required this.id,
    required this.attack,
    required this.defense,
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

  factory InfoPokemonDto.fromMap(Map<String, dynamic> item) => InfoPokemonDto(
        id: item['id'],
        height: item['height'] * 0.01,
        weight: item['weight'] * 0.1,
        type: (item['types'] as List<dynamic>)
            .map(
              (item) => TypeDto.fromMap(item).name,
            )
            .toList(),
        healthPoints: item['stats'][0]['base_stat'],
        attack: item['stats'][1]['base_stat'],
        defense: item['stats'][2]['base_stat'],
        specialAttack: item['stats'][3]['base_stat'],
        specialDefense: item['stats'][4]['base_stat'],
        speed: item['stats'][5]['base_stat'],
        name: item['forms'][0]['name'],
        image: Uri.parse(item['sprites']['other']['home']['front_default']),
        moves: (item['moves'] as List<dynamic>)
            .map(
              (item) => item['move']['name'].toString(),
            )
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'height': height,
        'weight': weight,
        'type': type,
        'healthPoints': healthPoints,
        'attack': attack,
        'defense': defense,
        'specialAttack': specialAttack,
        'specialDefense': specialDefense,
        'speed': speed,
        'name': name,
        'image': image,
        'moves': moves,
      };
}

class TypeDto {
  String name;
  TypeDto({required this.name});

  factory TypeDto.fromMap(Map<String, dynamic> item) {
    return TypeDto(
      name: item['type']['name'].toString(),
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
      };
}
