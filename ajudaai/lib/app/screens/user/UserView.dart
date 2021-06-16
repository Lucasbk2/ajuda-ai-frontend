
import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
    UserView({Key key}) : super(key: key);

    @override
    _UserView createState() => _UserView();
}

class _UserView extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text( "Login" ) ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'O Usuário',
            ),
          ]
      ),
    ),
  );
  }
}
