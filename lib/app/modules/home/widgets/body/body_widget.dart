import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_jornada/app/modules/home/widgets/body/body_controller.dart';

class BodyWidget extends StatelessWidget {
  final BodyController bodyController;
  const BodyWidget({Key key, this.bodyController}) : super(key: key);

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
    return Padding(
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
                onChanged: bodyController.homeController.client.changeName,
                error: bodyController.homeController.client.errorName,
                errorMessage:
                    bodyController.homeController.client.errorNameMessage);
          }),
          SizedBox(
            height: 25.0,
          ),
          Observer(builder: (_) {
            return this.textField(
                labelText: 'Seu email',
                onChanged: bodyController.homeController.client.changeEmail,
                error: bodyController.homeController.client.errorEmail,
                errorMessage:
                    bodyController.homeController.client.errorEmailMessage);
          }),
          SizedBox(
            height: 25.0,
          ),
          Observer(builder: (_) {
            return this.textField(
                labelText: 'Seu cpf',
                onChanged: bodyController.homeController.client.changeCpf,
                error: bodyController.homeController.client.errorCpf,
                errorMessage:
                    bodyController.homeController.client.errorCpfMessage);
          }),
          SizedBox(
            height: 25.0,
          ),
          Observer(builder: (_) {
            return RaisedButton(
              onPressed:
                  bodyController.homeController.client.formValid ? () {} : null,
              child: Text('Salvar'),
            );
          }),
        ],
      ),
    );
  }
}
