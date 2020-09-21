import 'package:mobx/mobx.dart';
import 'package:mobx_jornada/app/modules/core/models/user_mode.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @observable
  UserModel user;
  @action
  setUser(UserModel model) => user = model;
  @computed
  bool get isLogged => user.email != null && user.senha != null;
}
