import 'dart:html';

import 'package:ajudaai/app/screens/login/LoginView.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarPurple, title: Text("Register")),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {}
}
