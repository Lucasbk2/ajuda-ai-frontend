import 'package:ajudaai/app/utils/Injector.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'UserController.g.dart';

class UserController = _UserController with _$UserController;

abstract class _UserController with Store {
  @action
  void LoadAllUsers() {
    Injector.iUserService.getAllUsers().then((value) => {print(value.length)});
  }

  @action
  void GoBack(context) {
    Navigator.pop(context);
  }
}
