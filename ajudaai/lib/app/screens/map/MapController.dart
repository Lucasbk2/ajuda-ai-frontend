import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
part 'MapController.g.dart';

class MyMapController = _MapController with _$MyMapController;

abstract class _MapController with Store {
  @observable
  double latitude;
  @observable
  double longitude;

  @action
  Future<void> getCurrentLtg() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    this.latitude = position.latitude;
  }

  @action
  Future<void> getCurrentLong() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    this.longitude = position.longitude;
  }
  
  @action
  Future<void> waitLocationLoad() async{
    if(latitude == null || longitude == null){
      Timer(Duration(seconds: 1),() => null);
      waitLocationLoad();
    }
  }

  

  @action
  goBackHome(context) {
    //Navigator.pop(context, true,);
    Navigator.pushNamed(context, "/login");
  }
}
