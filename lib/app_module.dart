import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/features/widget_test/widget_test_module.dart';
import 'package:pokedex/routes_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(
      RoutesModule.widgetTest,
      module: WidgetTestModule(),
    );
  }
}
