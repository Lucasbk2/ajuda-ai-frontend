import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  Color _color;
  String _titulo;
  String _texto;
  CardComponent(this._color, this._titulo, this._texto, {Key key}) : super(key: key);

  @override
  _CardComponent createState() => _CardComponent(_color, _titulo, _texto);
}

class _CardComponent extends State<CardComponent> {
  Color _color;
  String _titulo;
  String _texto;

  _CardComponent(this._color, this._titulo, this._texto);

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

                    backgroundColor: _color,
                    radius: 25,
                    child: new Text("V", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _titulo,
                        style: TextStyle(
                          color: _color,
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(_texto),
                    ],
                  ),
                )
              ],
            ),
            height: 130,
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
