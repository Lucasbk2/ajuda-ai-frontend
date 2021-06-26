import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ajudaai/app/screens/splash/SplashController.dart';

final _splashController = SplashController();

class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class ScreenArguments {
  final double latitude;
  final double longitude;

  ScreenArguments(this.latitude, this.longitude);
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _splashController.getCurrentLong();
    _splashController.getCurrentLtg();
    Future.delayed(Duration(seconds: 4), () {
      
      final args = ModalRoute.of(context).settings.arguments as ScreenArguments;

      Navigator.of(context).pushNamed("/map", arguments: {
        'latitude': _splashController.latitude,
        'longitude': _splashController.longitude,
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Text(
        'Carregando Mapa',
        style: new TextStyle(
            fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}