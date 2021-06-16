import 'package:ajudaai/HomePage.dart';
import 'package:flutter/material.dart';
import 'app/screens/login/Login.dart';


void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData.from(colorScheme: ColorScheme.dark()),
            home: HomePage(title: 'Aquele teste'),
        );
    }
}
