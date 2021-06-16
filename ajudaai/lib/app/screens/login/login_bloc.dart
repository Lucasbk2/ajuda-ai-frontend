/*
import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';

class LoginBloc extends BlocBase {
  var _login = "";
  var _password = "";

  var _loginController = StreamController<int>();
  Stream<int> get teste => _loginController.stream;

  void doLogin(login, password) {
    if (login == "teste" && password == "teste") {
      print("valido");
    }
  }

  @override
  void dispose() {
    _loginController.close();
  }
}
*/
