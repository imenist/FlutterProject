import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      //初始化时的加载路由
      initialRoute: '/',
      //命名路由，可以传参
      onGenerateRoute: onGenerateRoute
    );
  }
}
