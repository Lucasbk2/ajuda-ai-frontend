import 'package:ajudaai/app/screens/login/login_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginWidget extends StatefulWidget{
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
  
}
  
  class _LoginWidgetState extends State<LoginWidget>{

  @override
  Widget build(BuildContext context) {
    // Instanciando o controller
    final LoginBlock block = BlocProvider.getBloc()<LoginBlock>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          // title: Text('Welcome to Flutter'),
        ),
        body: Center(child: 
          Column(children: [
            Padding(padding: const EdgeInsets.all(32.0),
            child: Text("Login"),
            ),
        ],),)
     
    );
  }

}