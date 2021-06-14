import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:ajudaai/app/screens/login/login_widget.dart';
import 'login_bloc.dart';
//import 'package:graphql_flutter/graphql_flutter.dart';

class LoginPageView extends StatelessWidget {

//final HttpLink httpLink = new HttpLink(url: "https://graphqlzero.almansi.me/api");
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: BlocProvider(
        blocs:[
          Bloc((i) => LoginBlock()),
        ],
        child: LoginWidget()
    ),
    );
  }
  
}
