class SpeciesPokemonDto {
  String description;

  SpeciesPokemonDto({
    required this.description,
  });

  factory SpeciesPokemonDto.fromMap(Map<String, dynamic> item) =>
      SpeciesPokemonDto(description: item['description']);

  Map<String, dynamic> toMap() => {
        'description': description,
      };
}
