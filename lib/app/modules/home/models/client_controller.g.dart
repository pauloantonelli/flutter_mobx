// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ClientController = BindInject(
  (i) => ClientController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientController on _ClientControllerBase, Store {
  Computed<bool> _$errorNameComputed;

  @override
  bool get errorName =>
      (_$errorNameComputed ??= Computed<bool>(() => super.errorName,
              name: '_ClientControllerBase.errorName'))
          .value;
  Computed<String> _$errorNameMessageComputed;

  @override
  String get errorNameMessage => (_$errorNameMessageComputed ??=
          Computed<String>(() => super.errorNameMessage,
              name: '_ClientControllerBase.errorNameMessage'))
      .value;
  Computed<bool> _$errorEmailComputed;

  @override
  bool get errorEmail =>
      (_$errorEmailComputed ??= Computed<bool>(() => super.errorEmail,
              name: '_ClientControllerBase.errorEmail'))
          .value;
  Computed<String> _$errorEmailMessageComputed;

  @override
  String get errorEmailMessage => (_$errorEmailMessageComputed ??=
          Computed<String>(() => super.errorEmailMessage,
              name: '_ClientControllerBase.errorEmailMessage'))
      .value;
  Computed<bool> _$errorCpfComputed;

  @override
  bool get errorCpf =>
      (_$errorCpfComputed ??= Computed<bool>(() => super.errorCpf,
              name: '_ClientControllerBase.errorCpf'))
          .value;
  Computed<String> _$errorCpfMessageComputed;

  @override
  String get errorCpfMessage => (_$errorCpfMessageComputed ??= Computed<String>(
          () => super.errorCpfMessage,
          name: '_ClientControllerBase.errorCpfMessage'))
      .value;
  Computed<bool> _$formValidComputed;

  @override
  bool get formValid =>
      (_$formValidComputed ??= Computed<bool>(() => super.formValid,
              name: '_ClientControllerBase.formValid'))
          .value;

  final _$nameAtom = Atom(name: '_ClientControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_ClientControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$cpfAtom = Atom(name: '_ClientControllerBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$_ClientControllerBaseActionController =
      ActionController(name: '_ClientControllerBase');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.changeName');
    try {
      return super.changeName(newName);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String newEmail) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.changeEmail');
    try {
      return super.changeEmail(newEmail);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String newCpf) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.changeCpf');
    try {
      return super.changeCpf(newCpf);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
cpf: ${cpf},
errorName: ${errorName},
errorNameMessage: ${errorNameMessage},
errorEmail: ${errorEmail},
errorEmailMessage: ${errorEmailMessage},
errorCpf: ${errorCpf},
errorCpfMessage: ${errorCpfMessage},
formValid: ${formValid}
    ''';
  }
}
