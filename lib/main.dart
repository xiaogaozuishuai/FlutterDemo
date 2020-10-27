import 'package:flutter/material.dart';
import 'NavigatorDemo.dart';
import './Demo/material_components.dart';

void main()=>runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      //home: TextFiledDemo(),
        initialRoute: "/mdc",
      routes: {
        "/MyPage": (context) => MyPage(title: "MyPage"),
        "/About": (context) => MyPage(title: "About"),
        "/mdc": (context) => MaterialComponents()
      }
      );
  }
}










