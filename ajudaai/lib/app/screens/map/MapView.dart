import 'package:ajudaai/app/screens/map/MapaComponent.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MapView extends StatefulWidget {
  MapView({Key key}) : super(key: key);

  @override
  _MapView createState() => _MapView();
}

class _MapView extends State<MapView> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        backgroundColor: AppColors.appBarPurple,title: Text('Mapa')),
        body: Observer(
          builder: (_) => MapaComponent()
        ));
  }
}
