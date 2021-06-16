
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
    LoginPage({Key key}) : super(key: key);

    @override
    _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text( "Login" ) ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
                'O Login',
            ),
            OutlinedButton(
              child: Text('Login'),
              onPressed: () => { print("Fez o login") },
            ),
            OutlinedButton(
              onPressed: () => { Navigator.pushNamed(context, "/user")},
              child: Text('Cadastro')
            ),
            ElevatedButton(
              onPressed: () => { Navigator.pop(context, true) },
              child: Text('Voltar')
            )
          ]
        )
      )
    );
  }
  
}
