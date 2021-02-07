import 'package:flutter/material.dart';
class Dr1 extends StatefulWidget {
  @override
  _Dr1State createState() => _Dr1State();
}

class _Dr1State extends State<Dr1> {
  final _keyscaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyscaffold,
      appBar: AppBar(
       title: Text('Drawer'), 
       centerTitle: true,
       backgroundColor: Colors.orangeAccent[200],
       actions: [
         Icon(Icons.tab),

       ],
       elevation: 8,
      leading: IconButton(icon: Icon(Icons.settings_applications_outlined), onPressed: (){
         
           _keyscaffold.currentState.openDrawer(); 
        
       }), 
      ),
      drawer: Drawer(
       child: ListView(
         
        children: [
          
          Text('user page'),
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.pink),
           
            child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                     Icon(Icons.home_repair_service),
                    Text('home'),
                  ],
                ),
                Row(
                  children: [
                            Text('Hello'),Text('World'),
                  ],
                ),
              ],
            ),
          ),),
           ListTile(
                 title: Text('settings'),
                 leading: Icon(Icons.settings,
                 color: Colors.orangeAccent,
               ),
               onTap: (){},
               ),
                  ListTile(
                 title: Text('call_rounded '),
              leading: Icon(Icons.add_ic_call_rounded,
              color: Colors.greenAccent, ),
                   onTap: (){},
               ),
               
                  ListTile(
                 title: Text('add_location'),
                 leading: Icon(Icons.add_location,
                 color: Colors.blue,
               ),
                  onTap: (){},
               ),
                  ListTile(
                 title: Text('add_to_drive'),
                 leading: Icon(Icons.add_to_drive,
                 color: Colors.indigo,
               ),
                  onTap: (){},
               ),
                  ListTile(
                 title: Text('analytics_rounded'),
                 leading: Icon(Icons.analytics_rounded,
                 color: Colors.red,
               ),
                  onTap: (){},
               ),
        ], 
       ), 
      ),
      
    );
  }
}