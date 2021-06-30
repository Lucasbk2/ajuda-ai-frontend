import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:geolocator/geolocator.dart';
part 'LoginController.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  @action
  Future<void> getCurrentLtg() async {
    await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest);
  }

  @action
  goBackHome(context) {
    Navigator.pop(context, true);
  }
}
