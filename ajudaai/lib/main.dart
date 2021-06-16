import 'package:ajudaai/HomePage.dart';
import 'package:flutter/material.dart';
import 'app/screens/login/LoginPage.dart';


void main() {
  
  runApp(MaterialApp(
    home: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.from(colorScheme: ColorScheme.dark()),
        home: HomePage(title: 'Aquele teste'),
    ), // becomes the route named '/'
    initialRoute: '/initial',
    routes: <String, WidgetBuilder> {
      '/initial': (BuildContext context) => HomePage(title: 'Aquele teste'),
      '/login': (BuildContext context) => LoginPage()
    },
  ));
  
}
