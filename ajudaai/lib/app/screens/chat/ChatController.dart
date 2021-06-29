import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:async';
part 'ChatController.g.dart';

class ChatController = _ChatController with _$ChatController;

abstract class _ChatController with Store {

  

  @action
  goBackHome(context) {
    Navigator.pop(context, true,);
  }
}