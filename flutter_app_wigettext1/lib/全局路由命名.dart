import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/search.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      //命名路由，可以做到全局配置，其他地方直接用名字就可以
      routes: {
        '/form':(context) => FormPage(),
        '/search':(context) => SearchPage(),
      }
    );
  }
}





