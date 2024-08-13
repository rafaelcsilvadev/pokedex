import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/core/theme/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pokédex',
      themeMode: ThemeMode.system,
      theme: ThemeData(colorScheme: ColorScheme.light(
        primary: AppColors.primary.light,
        surface: AppColors.surface.light,
        error: AppColors.error.light,
        secondary: AppColors.secondary.light,        
      )),
      routerConfig: Modular.routerConfig,
    );
  }
}
