import 'package:ajudaai/app/screens/chat/ChatController.dart';
import 'package:flutter/material.dart';
import 'package:ajudaai/app/shared/core/core.dart';
import 'package:ajudaai/app/shared/models/Message.dart';

import 'package:flutter_socket_io/flutter_socket_io.dart';
import 'package:flutter_socket_io/socket_io_manager.dart';

final _chatController = ChatController();

class ChatView extends StatefulWidget {
  ChatView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  String userId = "1";
  SocketIO socketIO;

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black,
    primary: Colors.grey[300],
    // color: Colors.red,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 100),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        side: BorderSide(color: Colors.red)),
  );

  String idUser = "1",
      name = "leonardo",
      avatar = "https://avatars.githubusercontent.com/u/74056749?v=4";
  bool valid = true;
  // String name = "leonardo";
  // String avatar = "https://avatars.githubusercontent.com/u/74056749?v=4";

  List<Message> messages = [
    Message(message: "1", id: "1", chatKey: "olin"),
    Message(message: "2", id: "2", chatKey: "polin"),
    Message(message: "3", id: "1", chatKey: "polin"),
    Message(message: "4", id: "2", chatKey: "polin"),
    Message(message: "5", id: "2", chatKey: "polin"),
  ];

  @override
  void initState() {
    //Initializing the message list
    // messages = List<String>();
    //Initializing the TextEditingController and ScrollController
    // textController = TextEditingController();
    // scrollController = ScrollController();
    //Creating the socket
    socketIO = SocketIOManager().createSocketIO(
      'http://localhost:3000',
      '/',
    );
    //Call init before doing anything with socket
    socketIO.init();
    //Subscribe to an event to listen to
    socketIO.subscribe('receive_message', (jsonData) {
      //Convert the JSON data received into a Map
      print(jsonData);
      print("testes");
    });
    //Connect to the socket
    socketIO.connect();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarPurple,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].id == idUser
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].id == idUser
                          ? AppColors.blueSend
                          : AppColors.blueRedcieve),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].message,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              padding:
                  EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.grey[300],
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "Mensagens...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  if (valid)
                    ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () {},
                      child: const Text('Aceitar ajuda'),
                    ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: const Text('Finalizado'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _ChatPageState extends State<ChatPage> {
//   SocketIO socketIO;
//   List<String> messages;
//   double height, width;
//   TextEditingController textController;
//   ScrollController scrollController;

//   @override
//   void initState() {
//     //Initializing the TextEditingController and ScrollController
//     textController = TextEditingController();
//     scrollController = ScrollController();
    
//     //Creating the socket
//     socketIO = SocketIOManager().createSocketIO(
//       'http://localhost:3000',
//       '/',
//     );
    
//     //Call init before doing anything with socket
//     socketIO.init();
//     //Subscribe to an event to listen to
    
//     // socketIO.subscribe('receive_message', (jsonData) {
//     //   //Convert the JSON data received into a Map
//     //   Map<String, dynamic> data = json.decode(jsonData);
//     //   this.setState(() => messages.add(data['message']));
//     //   scrollController.animateTo(
//     //     scrollController.position.maxScrollExtent,
//     //     duration: Duration(milliseconds: 600),
//     //     curve: Curves.ease,
//     //   );
//     // });

//     //Connect to the socket
//     socketIO.connect();
//     super.initState();
//   }
