import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_jornada/app/modules/home/models/item_model.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: false),
    ItemModel(title: 'Item 4', check: true),
    ItemModel(title: 'Item 5', check: false),
    ItemModel(title: 'Item 6', check: false),
    ItemModel(title: 'Item 7', check: true),
    ItemModel(title: 'Item 8', check: false),
    ItemModel(title: 'Item 9', check: false),
    ItemModel(title: 'Item 10', check: true),
    ItemModel(title: 'Item 11', check: false),
    ItemModel(title: 'Item 12', check: false),
    ItemModel(title: 'Item 13', check: true),
    ItemModel(title: 'Item 14', check: false),
    ItemModel(title: 'Item 15', check: false),
    ItemModel(title: 'Item 16', check: true),
    ItemModel(title: 'Item 17', check: false),
    ItemModel(title: 'Item 18', check: false),
    ItemModel(title: 'Item 19', check: true),
    ItemModel(title: 'Item 20', check: false),
    ItemModel(title: 'Item 21', check: false),
  ].asObservable();

  @action
  addItem(ItemModel item) {
    listItems.add(item);
  }

  @action
  changeCheck(int index, ItemModel item) {
    listItems[index].check = item.check;
  }

  @action
  removeItem(ItemModel item) {
    listItems.removeWhere((element) => element.title == item.title);
  }

  @computed
  int get checked => listItems.where((item) => item.check).length;
}
