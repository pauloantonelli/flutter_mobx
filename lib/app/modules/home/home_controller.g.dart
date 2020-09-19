// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool> _$errorNameComputed;

  @override
  bool get errorName =>
      (_$errorNameComputed ??= Computed<bool>(() => super.errorName,
              name: '_HomeControllerBase.errorName'))
          .value;
  Computed<String> _$errorNameMessageComputed;

  @override
  String get errorNameMessage => (_$errorNameMessageComputed ??=
          Computed<String>(() => super.errorNameMessage,
              name: '_HomeControllerBase.errorNameMessage'))
      .value;
  Computed<bool> _$errorEmailComputed;

  @override
  bool get errorEmail =>
      (_$errorEmailComputed ??= Computed<bool>(() => super.errorEmail,
              name: '_HomeControllerBase.errorEmail'))
          .value;
  Computed<String> _$errorEmailMessageComputed;

  @override
  String get errorEmailMessage => (_$errorEmailMessageComputed ??=
          Computed<String>(() => super.errorEmailMessage,
              name: '_HomeControllerBase.errorEmailMessage'))
      .value;
  Computed<bool> _$errorCpfComputed;

  @override
  bool get errorCpf =>
      (_$errorCpfComputed ??= Computed<bool>(() => super.errorCpf,
              name: '_HomeControllerBase.errorCpf'))
          .value;
  Computed<String> _$errorCpfMessageComputed;

  @override
  String get errorCpfMessage => (_$errorCpfMessageComputed ??= Computed<String>(
          () => super.errorCpfMessage,
          name: '_HomeControllerBase.errorCpfMessage'))
      .value;
  Computed<bool> _$formValidComputed;

  @override
  bool get formValid =>
      (_$formValidComputed ??= Computed<bool>(() => super.formValid,
              name: '_HomeControllerBase.formValid'))
          .value;

  final _$nameAtom = Atom(name: '_HomeControllerBase.name');

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

  final _$emailAtom = Atom(name: '_HomeControllerBase.email');

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

  final _$cpfAtom = Atom(name: '_HomeControllerBase.cpf');

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

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeName');
    try {
      return super.changeName(newName);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String newEmail) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeEmail');
    try {
      return super.changeEmail(newEmail);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String newCpf) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeCpf');
    try {
      return super.changeCpf(newCpf);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
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
