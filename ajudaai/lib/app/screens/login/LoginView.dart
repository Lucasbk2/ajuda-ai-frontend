
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
    LoginView({Key key}) : super(key: key);

    @override
    _LoginView createState() => _LoginView();
}

class _LoginView extends State<LoginView> {

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
            TextButton(
              child: Text('Login'),
              onPressed: () => { print("Fez o login") },
            ),
            OutlinedButton(
              onPressed: () => { print("vai para o cadastro") },
              child: Text('Cadastro')
            ),
            OutlinedButton(
              onPressed: () => {Navigator.pushNamed(context, "/map")},
              child: Text('Mapa')
            ),
            OutlinedButton(
              onPressed: () => { Navigator.pop(context, true) },
              child: Text('Voltar')
            )
          ]
        )
      )
    );
  }
  
}
