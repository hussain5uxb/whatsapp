
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';

import 'main.dart';
import 'pages/dark_Mode/home_dark_mode.dart';

class WhatsAppHome extends StatefulWidget {

    final List<CameraDescription> cameras;
     
     WhatsAppHome({this.cameras});

  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}
class _WhatsAppHomeState extends State<WhatsAppHome> 
  with SingleTickerProviderStateMixin {

  var _icon = Icons.brightness_2;
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }
 
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('WhatsApp'),
      elevation: 0.7,
      bottom: TabBar(
        controller: _tabController ,
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.camera_alt)),
          Tab(text: "CHATS"),
          Tab(    text: "STATUS"),
            Tab(text: "CALLS"),
        ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: Icon(
                _icon,
                color: Colors.black87,
                  size: 25,  
              ),
             onPressed: () {

                if (_icon == Icons.brightness_2) {
                  _icon = Icons.wb_sunny;
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context) => WhatsAppHomeDark(cameras:camera)),);


                } else {
                  _icon = Icons.brightness_2;

                }

              },
            ),
          ),
          Icon(Icons.search),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5) ,
              ),
                Icon(Icons.more_vert)

        ],
    ),
      body: TabBarView( 
        controller: _tabController ,
        children: [
         CameraScreen(widget.cameras),
          ChatScreen(),   
          StatusScreen(),
          CallScreen(),
       
       
        ], 
        ),
    floatingActionButton: showFab
    ? FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () {  },
        child: Icon(
          Icons.message,
         color: Colors.white, 
        )
    )
    : null ,


  );
  }

 


 

}

