import 'widgets/body/body_controller.dart';
import 'models/client_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $BodyController,
        $ClientController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => HomePage(
            bodyController: Modular.get(),
          ),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
