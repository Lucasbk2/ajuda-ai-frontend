import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  Color _color;
  CardComponent(this._color, {Key key}) : super(key: key);

  @override
  _CardComponent createState() => _CardComponent(_color);
}

class _CardComponent extends State<CardComponent> {
  Color _color;

  _CardComponent(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: new Card(
          borderOnForeground: true,
          elevation: 1,
          child: SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: new CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: new Text("V"),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Titulo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text('Aquele texto bolado'),
                    ],
                  ),
                )
              ],
            ),
            height: 150,
          )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        boxShadow: [
          BoxShadow(
            color: _color,
            blurRadius: 1.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              8.0, // Move to right 10  horizontally
              8.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
    );
  }
}
