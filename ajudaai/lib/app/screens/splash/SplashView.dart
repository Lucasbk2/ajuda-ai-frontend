import 'package:ajudaai/app/screens/login/LoginView.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:ajudaai/app/utils/Injector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController animationController;
  
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        duration: Duration(seconds: 2),
        vsync: this,
     );

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
    
    Injector.iUserService.verifyLogin().then((value) => {
      if(value){
        Navigator.pushNamed(context, "/feed")
      }else{
        Navigator.pushNamed(context, "/login")
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    AssetImage logoAsset = AssetImage('assets/images/logo.png');
    Image logoImg = Image(image: logoAsset, height:300, fit: BoxFit.cover,);

    return Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: AppGradientColors.linear),
          child: Center(
            child: FadeTransition(
              opacity: animationController.drive(CurveTween(curve: Curves.easeOut)),
              child: logoImg)
          )
        )
    );
  }
}
