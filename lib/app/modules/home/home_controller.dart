import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int counter = 0;

  _HomeControllerBase() {
    auto();
  }
  @action
  increment() {
    counter++;
  }

  auto() {
    autorun((_) {
      print(counter);
    });
  }
}
