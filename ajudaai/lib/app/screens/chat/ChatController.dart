import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:async';

import 'package:ajudaai/app/shared/models/Message.dart';
import 'package:ajudaai/app/utils/Injector.dart';
part 'ChatController.g.dart';

class ChatController = _ChatController with _$ChatController;

abstract class _ChatController with Store {
  @action
  Future<void> getCurrentLtg() async {
    Injector.iChatService.getAllmessage().then((value) {
      return value;
    });

    // var msg = Message(message: "asdasdd", id: "resada", chatKey: "passei mal");
    // Injector.iChatService.insertMessage(msg);
  }

  @action
  goBackHome(context) {
    Navigator.pop(
      context,
      true,
    );
  }
}
