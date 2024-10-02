import 'package:flutter/material.dart';
import 'package:pokedex/features/pokedex_list/presentations/components/atoms/app_input_atom.dart';
import 'package:pokedex/features/pokedex_list/presentations/components/molecules/title_top_molecule.dart';

class TopPokemonListOrganism extends StatelessWidget {
  const TopPokemonListOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const TitleTopMolecule(),
        SizedBox(
          height:32,
          child: AppInputAtom(
            onChanged: (_) {},
            hintText: 'Search',
            prefixIcon: Icons.search,
          ),
        )
      ],
    );
  }
}