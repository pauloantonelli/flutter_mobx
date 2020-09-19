import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  String nome = '';
  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => '$nome $sobrenome';

  @action
  changeNome(String novoNome) {
    nome = novoNome;
  }

  @action
  changeSobreNome(String novoSobrenome) {
    sobrenome = novoSobrenome;
  }
}
