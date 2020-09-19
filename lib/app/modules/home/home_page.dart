import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx_jornada/app/modules/home/widgets/body/body_controller.dart';
import 'package:mobx_jornada/app/modules/home/widgets/body/body_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final BodyController bodyController;
  const HomePage(
      {Key key, this.title = "Formulário validado", this.bodyController})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BodyWidget(
        bodyController: widget.bodyController,
      ),
    );
  }
}
