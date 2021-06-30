
import 'package:ajudaai/app/screens/feed/FeedView.dart';
import 'package:ajudaai/app/screens/sobre/SobreView.dart';
import 'package:ajudaai/app/screens/splash/SplashView.dart';
import 'package:ajudaai/app/screens/user/UserView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'TextAndPhoto.dart';

class CustomDrawer extends StatelessWidget {

void sair(context) async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  
                  [ "nome", "numero", "email", "senha", ].forEach((x) => prefs.remove(x) );
                  
                  Navigator.push( context, MaterialPageRoute(builder: (context) => SplashView()));
}

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
              title: TextAndPhoto( "Perfil", Icon( Icons.supervised_user_circle ) ),
              onTap: () =>
                Navigator.push( context, MaterialPageRoute(builder: (context) => UserView())),
            ),
            ListTile(
              title: TextAndPhoto( "Ajudas", Icon( Icons.help ) ),
              onTap: () =>
                Navigator.push( context, MaterialPageRoute(builder: (context) => FeedView())),
            ),
            new Divider(),
            ListTile(
              title: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextAndPhoto( "Sobre", Icon( Icons.info ) ),
                ),
              onTap: () =>
                Navigator.push( context, MaterialPageRoute(builder: (context) => SobreView())),
            ),
            
            ListTile(
              title: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextAndPhoto( "Sair", Icon( Icons.exit_to_app, color: Colors.red, ) ),
                      
                ),
              onTap: () => sair(context)
            ),

          ],
        ),
      );

}
