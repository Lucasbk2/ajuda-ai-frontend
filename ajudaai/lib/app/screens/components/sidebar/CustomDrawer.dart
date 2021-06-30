
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TextAndPhoto.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          // padding: new EdgeInsets.all(0.0),
          children: <Widget>[
                UserAccountsDrawerHeader(
                accountEmail: new Text("lucasleite@ucl.br"),
                accountName: new Text("Leitinho"),
                currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black,
                child: new Text("Lopes"),
                ),
                otherAccountsPictures: <Widget>[
                new CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: new Text("LL"),
                )
                ],
            ),
            ListTile(
              title: TextAndPhoto( "Perfil", "a" ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: TextAndPhoto( "Ajudas", "a" ),
              onTap: () {
                Navigator.pushNamed(context, "/initial");
              },
            ),
            new Divider(),
            ListTile(
              title: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextAndPhoto( "Sobre", "a" ),
                ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );

}
