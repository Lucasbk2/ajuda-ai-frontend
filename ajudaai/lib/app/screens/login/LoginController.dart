
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'LoginController.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {

    @action
    goBackHome(context) {
        Navigator.pop(context, true);
    }
}
