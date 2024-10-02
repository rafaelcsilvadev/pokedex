import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/core/assets/app_icons.dart';
import 'package:pokedex/core/components/atoms/text_header_atom/text_header_atom.dart';
import 'package:pokedex/core/theme/colors/gray_scale_color.dart';

class TitleTop extends StatelessWidget {
  const TitleTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppIcons.pokeball,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: TextHeaderAtom.headline(
            color: GrayScaleColor.white.color,
            text: 'Pokedéx',
          ),
        ),
      ],
    );
  }
}
