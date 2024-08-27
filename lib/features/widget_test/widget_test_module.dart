import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/features/widget_test/presentation/pages/widget_test_page.dart';
import 'package:pokedex/features/widget_test/routes/widget_test_routes.dart';

class WidgetTestModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      WidgetTestRoutes.widgetTest,
      child: (context) => const WidgetTestPage(),
    );
  }
}
