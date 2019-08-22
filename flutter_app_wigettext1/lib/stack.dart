import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 600,
        width: 400,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 100,
              top: 50,
              child: Icon(Icons.home,size: 30,color: Colors.black,),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.android,size: 25,color: Colors.white,),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.favorite,size: 20,color: Colors.blue,),
            )
          ],
        ),
      ),
    );
  }
}
