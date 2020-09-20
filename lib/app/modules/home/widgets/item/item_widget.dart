import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_jornada/app/modules/home/home_controller.dart';
import 'package:mobx_jornada/app/modules/home/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel itemModel;
  final Function removeItem;
  final controller = Modular.get<HomeController>();

  ItemWidget({Key key, this.itemModel, this.removeItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return CheckboxListTile(
        value: itemModel.check,
        onChanged: (bool value) {
          itemModel.setCheck(value);
        },
        title: Text(itemModel.title),
        secondary: IconButton(
          onPressed: removeItem,
          icon: Icon(
            Icons.remove_circle,
            color: Colors.red,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.red,
        checkColor: Colors.white,
      );
    });
  }
}
