import 'package:ajudaai/app/screens/splash/SplashView.dart';
import 'package:ajudaai/app/utils/Injector.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'LoginController.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  @observable
  TextEditingController txtLogin = TextEditingController();

  @observable
  TextEditingController txtPass = TextEditingController();

  @action
  doLogin(context) {
    Injector.iUserService
        .doLogin(txtLogin.value.text, txtPass.value.text)
        .then((value) {
      if (value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SplashView()));
      } else {
        final snackBar = SnackBar(
          content: Text('Login incorreto'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {},
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }
}
