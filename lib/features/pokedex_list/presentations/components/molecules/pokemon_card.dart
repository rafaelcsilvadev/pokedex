import 'package:flutter/material.dart';
import 'package:pokedex/core/components/atoms/text_body/text_body.dart';
import 'package:pokedex/core/theme/colors/gray_scale_color.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.pokemonId,
    required this.pokemonName,
    required this.pokemonImage,
  });

  final int pokemonId;
  final String pokemonName;
  final String pokemonImage;

  @override
  Widget build(BuildContext context) {
    var pokemonIdFormatted = '#${pokemonId.toString().padLeft(3, '0')}';

    return Container(
      width: 104,
      height: 108,
      decoration: BoxDecoration(
        color: GrayScaleColor.white.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 12,
            padding: const EdgeInsets.only(
              right: 5,
              top: 2,
            ),
            alignment: Alignment.topRight,
            child: TextBody.caption(
              color: GrayScaleColor.medium.color,
              text: pokemonIdFormatted,
            ),
          ),
          Container(
            width: 72,
            height: 72,
            alignment: Alignment.center,
            child: Image.network(
              pokemonImage,
            ),
          ),
          Container(
            width: 88,
            height: 16,
            alignment: Alignment.center,
            child: TextBody.body4(
              color: GrayScaleColor.dark.color,
              text: pokemonName,
            ),
          ),
        ],
      ),
    );
  }
}
