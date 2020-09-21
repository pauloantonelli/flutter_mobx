import 'package:mobx/mobx.dart';
import 'package:mobx_jornada/app/modules/home/models/pagamento_model.dart';
part 'pagamento_store.g.dart';

class PagamentoStoreLocal = _PagamentoStoreLocalBase with _$PagamentoStoreLocal;

abstract class _PagamentoStoreLocalBase with Store {
  @observable
  PagamentoModel pagamento = new PagamentoModel();
}
