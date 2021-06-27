import 'package:ajudaai/app/screens/login/LoginView.dart';

import 'counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final counter = Counter();

class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Famoso Contador',
            ),
            Observer(
              builder: (_) => Text('${counter.value}'),
            ),
            TextButton(
              child: Text('Ir para o login'),
              onPressed: () => Navigator.pushNamed(context, '/login'),
            ),
            OutlinedButton(
              child: Text('Login'),
              onPressed: () => {print("Fez o login")},
            ),
            OutlinedButton(
                onPressed: () => {Navigator.pushNamed(context, "/user")},
                child: Text('User')),
            OutlinedButton(
                onPressed: () => {Navigator.pushNamed(context, "/splash")},
                child: Text('Mapa')),
            OutlinedButton(
                onPressed: () => {Navigator.pop(context, true)},
                child: Text('Voltar'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
