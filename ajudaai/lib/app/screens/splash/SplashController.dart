import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:async';
import 'package:geolocator/geolocator.dart';
part 'SplashController.g.dart';

class SplashController = _SplashController with _$SplashController;

abstract class _SplashController with Store {
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
  goBackHome(context) {
    Navigator.pop(context, true);
  }
}