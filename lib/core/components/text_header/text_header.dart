import 'package:pokedex/core/components/text_header/text_header_component.dart';

class TextHeader extends TextHeaderComponent {
  const TextHeader.headline({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 32,
        );

  const TextHeader.subtile3({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 16,
        );

  const TextHeader.subtile1({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 12,
        );

  const TextHeader.subtile2({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 32,
        );
}
