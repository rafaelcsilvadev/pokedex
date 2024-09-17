import 'package:flutter/material.dart';
import 'package:pokedex/core/components/atoms/text_body/text_body.dart';

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
        child: TextBody.body1(
          color: Colors.black,
          text: 'Teste',
        ),
      ),
    );
  }
}
