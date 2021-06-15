import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'app/screens/login/login_bloc.dart';
import 'app/screens/login/login_widget.dart';
import 'app/screens/map/map_bloc.dart';
import 'app/screens/map/map_widget.dart';
void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
//final HttpLink httpLink = new HttpLink(url: "https://graphqlzero.almansi.me/api");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: BlocProvider(blocs: [
        Bloc((i) => LoginBloc()),
        Bloc((i) => MapBloc()),
      ], child: LoginWidget()),
      
      
    );
  }
}
/*
  runApp(
    MaterialApp(
      home: teste()
    )
  );
}
  class teste extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste de execução"),
      ),
      );
        
  }

} */

