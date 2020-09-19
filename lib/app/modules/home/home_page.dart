import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.changeNome,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.changeSobreNome,
            ),
            SizedBox(
              height: 20,
            ),
            Observer(builder: (_) {
              return Text('${controller.nomeCompleto}');
            })
          ],
        ),
      ),
    );
  }
}
