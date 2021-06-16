import 'package:ajudaai/HomePage.dart';
import 'package:flutter/material.dart';
import 'app/screens/login/Login.dart';


void main() {
  runApp(
    home: MyApp(), // becomes the route named '/'
    routes: <String, WidgetBuilder> {
      '/a': (BuildContext context) => MyPage(title: 'page A'),
      '/b': (BuildContext context) => MyPage(title: 'page B'),
      '/c': (BuildContext context) => MyPage(title: 'page C'),
    },
  );
  
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
