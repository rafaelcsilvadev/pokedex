import 'package:flutter/material.dart';
import 'package:pokedex/core/components/text_header/text_header.dart';
import 'package:pokedex/core/components/text_header/text_header_component.dart';

class WidgetTestPage extends StatefulWidget {
  const WidgetTestPage({super.key});

  @override
  State<WidgetTestPage> createState() => _WidgetTestPageState();
}

class _WidgetTestPageState extends State<WidgetTestPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TextHeader.headline(
          color: Colors.black,
          text: 'Teste',
        ),
      ),
    );
  }
}
