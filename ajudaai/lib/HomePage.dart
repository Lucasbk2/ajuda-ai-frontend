
import 'package:ajudaai/app/screens/login/LoginPage.dart';

import './counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final counter = Counter();

class HomePage extends StatefulWidget {
    HomePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        builder: (_) => Text( '${counter.value}' ),
                    ),
                    TextButton(
                      child: Text('Ir para o login'),
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                    )
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
