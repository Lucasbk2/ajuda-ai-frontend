
import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
    FeedView({Key key}) : super(key: key);

    @override
    _FeedView createState() => _FeedView();
}

class _FeedView extends State<FeedView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text( "Feed" ) ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text('O Feed'),
      )
    );
  }
  
}
