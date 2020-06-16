import 'dart:ui' as ui;

import 'package:projeto_gerenciamento_vendas/main.dart' as entrypoint;

Future<void> main() async {
  if (true) {
    await ui.webOnlyInitializePlatform();
  }
  entrypoint.main();
}
