import 'package:flutter/material.dart';
//import 'package:graphql_flutter/graphql_flutter.dart';
class LoginPageView extends StatelessWidget {

//final HttpLink httpLink = new HttpLink(url: "https://graphqlzero.almansi.me/api");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          // title: Text('Welcome to Flutter'),
        ),
        body: Column( children: [
          Row(children: [
            Column( children:[
              Text("Login"),
          ],)
          ],)
        ],)
      ),
    );
  }
}
