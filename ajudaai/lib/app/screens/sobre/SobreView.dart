import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:flutter/material.dart';

class SobreView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sobre.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}
