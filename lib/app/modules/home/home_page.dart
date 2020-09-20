import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_jornada/app/modules/home/models/item_model.dart';
import 'package:mobx_jornada/app/modules/home/widgets/item/item_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Formulário validado"})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  _dialog() {
    ItemModel item = new ItemModel(check: false);
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar Item'),
            content: TextField(
              onChanged: (value) {
                item.title = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Novo Item'),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    controller.addItem(item);
                    Modular.to.pop(context);
                  },
                  child: Text('Salvar')),
              FlatButton(
                  onPressed: () {
                    Modular.to.pop(context);
                  },
                  child: Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: 'Pesquisa...'),
          onChanged: controller.setFilter,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Observer(builder: (_) {
              return SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 200.0,
                  child: ListView.builder(
                      shrinkWrap: false,
                      itemCount: controller.listFiltered.length,
                      itemBuilder: (_, index) {
                        final ItemModel item = controller.listFiltered[index];
                        return ItemWidget(
                          itemModel: item,
                          removeItem: () {
                            controller.removeItem(item);
                          },
                        );
                      }),
                ),
              );
            }),
            Container(
              child: Observer(builder: (_) {
                return Expanded(
                    child:
                        Center(child: Text('Checados: ${controller.checked}')));
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
