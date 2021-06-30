import 'package:ajudaai/app/shared/models/User.dart';
import 'package:ajudaai/app/utils/Injector.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'UserController.g.dart';

class UserController = _UserController with _$UserController;

abstract class _UserController with Store {
  @action
  void LoadAllUsers() {
    Injector.iUserService.getAllUsers().then( (value) {
      value.forEach((element) { print(element.name); });
    });

    var user = User(email: 'sfg@teste.com', name: 'jkngçbxdfjg');
    Injector.iUserService.insertUser(user);
  }

  @action
  void GoBack(context) {
    Navigator.pop(context);
  }
}
