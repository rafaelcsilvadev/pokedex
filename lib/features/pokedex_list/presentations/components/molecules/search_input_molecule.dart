import 'package:flutter/material.dart';
import 'package:pokedex/features/pokedex_list/presentations/components/atoms/app_input_atom.dart';

class SearchInputMolecule extends StatefulWidget {
  const SearchInputMolecule({
    super.key,
    required this.onChanged,
  });

  final Function(String) onChanged;

  @override
  State<SearchInputMolecule> createState() => _SearchInputMoleculeState();
}

class _SearchInputMoleculeState extends State<SearchInputMolecule> {
  @override
  Widget build(BuildContext context) {
    return AppInputAtom(
      onChanged: widget.onChanged,
      hintText: 'Search',
      prefixIcon: Icons.search,
    );
  }
}
