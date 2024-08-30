import 'package:flutter/material.dart';
import 'package:pokedex/core/components/app_text.dart';

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
        child: AppText(),
      ),
    );
  }
}
