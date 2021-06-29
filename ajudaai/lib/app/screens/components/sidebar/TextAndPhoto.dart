
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextAndPhoto extends StatelessWidget {
  final String text;
  final String img;
  
  TextAndPhoto(this.text, this.img);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      new CircleAvatar(
          backgroundColor: Colors.blue,
          child: new Text(img),
      ),
      Container(
          margin: const EdgeInsets.only(left: 10.0),
          child : Text(text)
      )
      
    ],
  );
  
}
