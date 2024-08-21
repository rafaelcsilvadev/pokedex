class SpeciesPokemonDto {
  String description;

  SpeciesPokemonDto({
    required this.description,
  });

  factory SpeciesPokemonDto.fromMap(Map<String, dynamic> item) =>
      SpeciesPokemonDto(
        description: item['flavor_text_entries'][0]['flavor_text'],
      );
      

  Map<String, dynamic> toMap() => {
        'description': description,
      };
}
