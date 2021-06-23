import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:geolocator/geolocator.dart';
part 'MapController.g.dart';

class MyMapController = _MapController with _$MyMapController;

abstract class _MapController with Store {

  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;
  
  String getCurrentLtg() {
    print(geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best));
    return "Executou";
}


  @action
  goBackHome(context) {
    Navigator.pop(context, true);
  }
}
