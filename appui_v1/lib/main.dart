import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'routes/Route.dart';
import 'pages/Login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}