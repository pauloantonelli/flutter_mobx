import 'package:flutter_modular/flutter_modular.dart';
import 'widgets/item/item_controller.dart';
import 'home_controller.dart';
import 'store/pagamento_store.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ItemController,
        $HomeController,
        // stores
        Bind((i) => PagamentoStoreLocal(), singleton: false),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => HomePage(),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
