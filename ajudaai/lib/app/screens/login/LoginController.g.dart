// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginController, Store {
  final _$txtLoginAtom = Atom(name: '_LoginController.txtLogin');

  @override
  TextEditingController get txtLogin {
    _$txtLoginAtom.reportRead();
    return super.txtLogin;
  }

  @override
  set txtLogin(TextEditingController value) {
    _$txtLoginAtom.reportWrite(value, super.txtLogin, () {
      super.txtLogin = value;
    });
  }

  final _$txtPassAtom = Atom(name: '_LoginController.txtPass');

  @override
  TextEditingController get txtPass {
    _$txtPassAtom.reportRead();
    return super.txtPass;
  }

  @override
  set txtPass(TextEditingController value) {
    _$txtPassAtom.reportWrite(value, super.txtPass, () {
      super.txtPass = value;
    });
  }

  final _$_LoginControllerActionController =
      ActionController(name: '_LoginController');

  @override
  dynamic doLogin(dynamic context) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.doLogin');
    try {
      return super.doLogin(context);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
txtLogin: ${txtLogin},
txtPass: ${txtPass}
    ''';
  }
}
