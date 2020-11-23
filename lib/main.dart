import 'package:flutter/material.dart';
import 'package:whatsappui_clone/screen/screens.dart';
import 'package:whatsappui_clone/extras/extras.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(

        primaryColor: MyColors.darkTeal,
        accentColor: MyColors.teal,

//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
