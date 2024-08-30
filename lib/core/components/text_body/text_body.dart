import 'package:pokedex/core/components/text_body/text_body_component.dart';

class TextBody extends TextBodyComponent {
  const TextBody.body1({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 16,
        );

  const TextBody.body2({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 14,
        );

  const TextBody.body3({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 12,
        );

  const TextBody.caption({
    super.key,
    required super.color,
    required super.text,
  }) : super(
          fontSize: 8,
        );
}
