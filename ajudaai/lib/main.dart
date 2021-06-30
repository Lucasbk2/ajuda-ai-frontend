import 'package:ajudaai/app/screens/feed/FeedView.dart';
import 'package:ajudaai/app/screens/chat/ChatView.dart';
import 'package:ajudaai/app/screens/user/UserView.dart';
import 'package:ajudaai/app/screens/splash/SplashView.dart';
import 'package:ajudaai/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:ajudaai/app/screens/map/MapView.dart';
import 'package:ajudaai/app/screens/login/LoginView.dart';
import 'app/screens/register/Register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/initial',
    routes: <String, WidgetBuilder>{
      '/initial': (BuildContext context) => HomeView(title: 'Aquele teste'),
      '/login': (BuildContext context) => LoginView(),
      '/register': (BuildContext context) => Register(),
      '/map': (BuildContext context) => MapView(),
      '/user': (BuildContext context) => UserView(),
      '/splash': (BuildContext context) => SplashView(),
      '/chat': (BuildContext context) => ChatView(),
      '/feed': (BuildContext context) => FeedView(),
    },
  ));
}
