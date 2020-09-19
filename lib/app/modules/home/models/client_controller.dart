import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'client_controller.g.dart';

@Injectable()
class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {
  @observable
  String name = '';
  @action
  changeName(String newName) => name = newName;
  @computed
  bool get errorName => name == '' || name.length <= 3 ? true : false;
  @computed
  String get errorNameMessage => errorName ? getErrorNameMessage() : null;
  String getErrorNameMessage() {
    if (name.isEmpty) return 'digite seu nome';
    if (name.length <= 3) return 'deve ter mais que 3 caracteres';
  }

  @observable
  String email = '';
  @action
  changeEmail(String newEmail) => email = newEmail;
  @computed
  bool get errorEmail =>
      email == '' || !email.contains('@') || !email.contains('.')
          ? true
          : false;
  @computed
  String get errorEmailMessage => errorEmail ? getErrorEmailMessage() : null;
  String getErrorEmailMessage() {
    if (email.isEmpty) return 'digite seu email';
    if (!email.contains('@') || !email.contains('.')) return 'email inválido';
  }

  @observable
  String cpf = '';
  @action
  changeCpf(String newCpf) => cpf = newCpf;
  @computed
  bool get errorCpf =>
      cpf == '' || cpf.length < 14 || !cpf.contains('-') ? true : false;
  @computed
  String get errorCpfMessage => errorCpf ? getErrorCpfMessage() : null;
  String getErrorCpfMessage() {
    if (cpf.isEmpty) return 'digite seu cpf';
    if (cpf.length <= 14 || !cpf.contains('-')) return 'cpf inválido';
  }

  @computed
  bool get formValid =>
      errorName == false && errorEmail == false && errorCpf == false
          ? true
          : false;
}
