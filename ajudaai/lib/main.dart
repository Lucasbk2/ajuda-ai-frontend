import 'package:ajudaai/app/screens/feed/FeedView.dart';
import 'package:ajudaai/app/screens/user/userView.dart';
import 'dart:collection';

import 'package:ajudaai/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:ajudaai/app/screens/map/MapView.dart';
import 'package:ajudaai/app/screens/login/LoginView.dart';


void main() {
  
  runApp(MaterialApp(
    initialRoute: '/initial',
    routes: <String, WidgetBuilder> {
      '/initial': (BuildContext context) => HomeView(title: 'Aquele teste'),
      '/login': (BuildContext context) => LoginView(),
      '/map': (BuildContext context) => MapView(),
      '/feed': (BuildContext context) => FeedView(),
      '/user': (BuildContext context) => UserView()
    },
  ));
  
}
