import 'package:ajudaai/app/screens/chat/ChatView.dart';
import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:ajudaai/app/screens/map/MapaComponent.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class ChataMapa extends StatefulWidget {
  ChataMapa({Key key}) : super(key: key);

  @override
  _ChataMapa createState() => _ChataMapa();
}

class _ChataMapa extends State<ChataMapa> with TickerProviderStateMixin {

  MotionTabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
        appBar: AppBar(title: Text("Ajuda"),
        backgroundColor: AppColors.appBarPurple,),
        body: MotionTabBarView(
          controller: _tabController,
          children: <Widget>[
            MapaComponent(),
            ChatView()
          ],
        ),
        bottomNavigationBar: MotionTabBar(
          labels: [
            "Mapa","Chat"
          ],
          initialSelectedTab: "Mapa",
          tabIconColor: Colors.green,
          tabSelectedColor: Colors.red,
          onTabItemSelected: (int value){
            print(value);
            setState(() {
              _tabController.index = value;
            });
          },
          icons: [
            Icons.location_city,
            Icons.chat
          ],
          textStyle: TextStyle(color: Colors.red),
        ),

    );
  }
}
