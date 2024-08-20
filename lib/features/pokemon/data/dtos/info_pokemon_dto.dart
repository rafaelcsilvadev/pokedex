class InfoPokemonDto {
  String id;
  String name;
  Uri image;
  List<String> type;
  double weight;
  double height;
  List<String> moves;
  double healthPoints;
  double attack;
  double defense;
  double specialAttack;
  double specialDefense;
  double speed;

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
        height: item['height'],
        weight: item['weight'],
        type: item['types'].map((item) => TypeDto.fromMap(item)).toList(),
        healthPoints: item['stats'][0]['base_stat'],
        attack: item['stats'][1]['base_stat'],
        defense: item['stats'][2]['base_stat'],
        specialAttack: item['stats'][3]['base_stat'],
        specialDefense: item['stats'][4]['base_stat'],
        speed: item['stats'][5]['base_stat'],
        name: item['form'][0]['name'],
        image: item['sprites']['other']['home']['front_default'],
        moves: [
          item['moves'][0]['move']['name'],
          item['moves'][1]['move']['name'],
        ],
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
      name: item['name'],
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
      };
}
