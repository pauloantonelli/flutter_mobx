import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_jornada/app/modules/home/home_controller.dart';

part 'body_controller.g.dart';

@Injectable()
class BodyController = _BodyControllerBase with _$BodyController;

abstract class _BodyControllerBase with Store {
  final HomeController homeController;

  _BodyControllerBase(this.homeController);
}
