import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:ajudaai/app/screens/feed/request/CreateRequest.dart';
import 'package:ajudaai/app/screens/feed/template/CardComponent.dart';
import 'package:ajudaai/app/screens/user/UserView.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FeedView extends StatefulWidget {
  FeedView({Key key}) : super(key: key);

  @override
  _FeedView createState() => _FeedView();
}

class _FeedView extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Feed")),
        drawer: CustomDrawer(),
        body: Container(
          decoration: BoxDecoration(gradient: AppGradientColors.linear),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                      ),
                      onPressed: () => {
                        showBarModalBottomSheet(
                          context: context,
                          builder: (context) => CreateRequest(),
                        )
                      },
                      child: Text('Precisando de ajuda?', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  )),
              CardComponent(Colors.deepOrange),
              CardComponent(Colors.deepPurple),
              CardComponent(Colors.cyanAccent),
            ],
          ),
        ));
  }
}
