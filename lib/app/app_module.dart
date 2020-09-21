import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_controller.dart';
import 'modules/core/stores/auth_store.dart';
import 'app_widget.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((i) => AuthStore()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
