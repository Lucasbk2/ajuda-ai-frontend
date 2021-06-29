import 'dart:ui';

import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:ajudaai/app/shared/core/core.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 120.0, 0.0, 0.0),
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 200.0, 0.0, 0.0),
                  child: Text(
                      "Entre com seu e-mail e senha para\n"
                      "acessar sua conta.",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.normal)),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: AppColors.label,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple))),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: AppColors.label,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 17.0, left: 20.0),
                  child: InkWell(
                    child: Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(
                        color: AppColors.linkLogin,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: 45.0,
            padding: EdgeInsets.only(left: 18.0, right: 18.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              shadowColor: Colors.purpleAccent,
              color: AppColors.purpleButton,
              elevation: 3.0,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Não tem uma conta?',
                style: TextStyle(
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(
                width: 5.0,
                height: 200.0,
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'Cadastre-se',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: AppColors.linkLogin,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
