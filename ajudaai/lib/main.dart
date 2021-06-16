import 'package:ajudaai/HomePage.dart';
import 'package:ajudaai/app/screens/user/userView.dart';
import 'package:flutter/material.dart';
import 'app/screens/login/LoginPage.dart';


void main() {
  
  runApp(MaterialApp(
    theme: ThemeData.from(colorScheme: ColorScheme.dark()),
    initialRoute: '/initial',
    routes: <String, WidgetBuilder> {
      '/initial': (BuildContext context) => HomePage(title: 'Aquele teste'),
      '/login': (BuildContext context) => LoginPage(),
      '/user': (BuildContext context) => UserView()
    },
  ));
  
}
