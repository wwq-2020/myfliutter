import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/simple.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHome(),
     routes:<String,WidgetBuilder>{
        "/firstsidebar":(BuildContext ctx)=> Simple("firstbody"),
    },
    );
  }
}
