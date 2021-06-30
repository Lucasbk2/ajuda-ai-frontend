
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextAndPhoto extends StatelessWidget {
  final String text;
  final Icon icon;
  
  TextAndPhoto(this.text, this.icon);

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      icon,
      Container(
          margin: const EdgeInsets.only(left: 10.0),
          child : Text(text)
      )
      
    ],
  );
  
}
