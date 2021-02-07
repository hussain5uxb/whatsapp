import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/WhatsApp_Home.dart';



List<CameraDescription> camera;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  camera = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      theme: new ThemeData(
        primaryColor:  Color(0xff075E54),
        accentColor: Color(0xff25D366)
      ),
      debugShowCheckedModeBanner: false,
       home: new WhatsAppHome(cameras:camera)
    );
    
  }
}
