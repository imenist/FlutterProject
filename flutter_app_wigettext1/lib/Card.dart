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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network("src",fit: BoxFit.cover,),
              ),
              ListTile(
                //leading:Image
                title: Text("张三",style: TextStyle(color: Colors.blue),),
                subtitle: Text("高级工程师"),),
              ListTile(
                title: Text("电话:sdsdsdsdsdsd"),
                ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四",style: TextStyle(color: Colors.black),),
                subtitle: Text("产品经理"),
              ),
              ListTile(
                title: Text("电话:12334343"),
              )
            ],
          ),
        )
      ],
    );
  }
}
