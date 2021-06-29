import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:latlong2/latlong.dart';
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
  LatLng getLtgLng(context){
    final Map<String, double> arguments = ModalRoute.of(context).settings.arguments;
    if(longitude==null || latitude== null){
      latitude = -20.1769344;
      longitude = -40.2168991;
    }
    else{
    latitude = arguments['latitude'];
    longitude = arguments['longitude'];
    }
    return LatLng(latitude, longitude);
  }
    
  @action
  goBackHome(context) {
    int count = 0;
    Navigator.of(context).popUntil((_) => count++ >= 2);
  }
}
