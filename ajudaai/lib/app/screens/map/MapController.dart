import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'MapController.g.dart';

class MapController = _MapController with _$MapController;

abstract class _MapController with Store {
  
  
  @action
  goBackHome(context) {
    Navigator.pop(context, true);
  }
}
