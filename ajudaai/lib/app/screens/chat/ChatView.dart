import 'package:ajudaai/app/screens/chat/ChatController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final _chatController = ChatController();

class ChatView extends StatefulWidget {
  ChatView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}