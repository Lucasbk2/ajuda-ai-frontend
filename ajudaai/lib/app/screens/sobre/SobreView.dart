import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:flutter/material.dart';

class SobreView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
      AssetImage PurpleMarker1 = AssetImage('assets/images/sobre1.png');
      Image imagem1 = Image(image: PurpleMarker1 );

      AssetImage PurpleMarker2 = AssetImage('assets/images/sobre2.png');
      Image imagem2 = Image(image: PurpleMarker2, );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarPurple, title: Text("Sobre")),
      drawer: CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          imagem1,
          imagem2
        ],
      )
    );
  }
}
