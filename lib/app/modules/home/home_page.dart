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
  Widget textField(
      {String labelText, Function onChanged, bool error, String errorMessage}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: error ? errorMessage : null),
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Observer(builder: (_) {
              return this.textField(
                  labelText: 'Seu nome',
                  onChanged: controller.changeName,
                  error: controller.errorName,
                  errorMessage: controller.errorNameMessage);
            }),
            SizedBox(
              height: 25.0,
            ),
            Observer(builder: (_) {
              return this.textField(
                  labelText: 'Seu email',
                  onChanged: controller.changeEmail,
                  error: controller.errorEmail,
                  errorMessage: controller.errorEmailMessage);
            }),
            SizedBox(
              height: 25.0,
            ),
            Observer(builder: (_) {
              return this.textField(
                  labelText: 'Seu cpf',
                  onChanged: controller.changeCpf,
                  error: controller.errorCpf,
                  errorMessage: controller.errorCpfMessage);
            }),
            SizedBox(
              height: 25.0,
            ),
            Observer(builder: (_) {
              return RaisedButton(
                onPressed: controller.formValid ? () {} : null,
                child: Text('Salvar'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
