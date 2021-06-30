import 'dart:js_util';

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
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 0.0),
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                  child: Text(
                      "Entre com seu e-mail e senha para\n"
                      "acessar sua conta.",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.normal)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
