import 'package:flutter/material.dart';
import './screens/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "Black",
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
      // primaryColor: new Color(0xff075E54),
      primaryColor: Colors.black,
      

  accentColor:Colors.red,
  
//colors for message icon black
  // accentColor:Colors.black,



  tabBarTheme:TabBarTheme(

    labelColor: Colors.white
     ),

     textTheme: TextTheme(
       title: TextStyle(color: Colors.white,fontSize: 14.0),

       body1: TextStyle(color: Colors.black),

       button: TextStyle(color: Colors.white),

     ),
     bottomAppBarColor: Colors.white,

     ),

     home: Home(),
    );
  }
}

