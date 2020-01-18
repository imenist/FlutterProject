import 'package:flutter/material.dart';
import 'package:appui_v1/routes/Route.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = '反正就是通知反正就是通知反正就是通知反正就是通知反正就是通知反正就是通知';

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children:ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('第一个通知'),
              subtitle: Text(text),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap:(){
                Navigator.pushNamed(context, '/Announce',arguments: {
                  "content":text,
                });
            },
            ),
            ListTile(
              title: Text('第二个通知'),
              subtitle: Text("反正就是通知反正就是通知反正就是通知"),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap:(){
                Navigator.pushNamed(context, '/Announce',arguments: {
                  "content":text,
                });
              },
            ),
          ]).toList(),
        )
    );
  }
}
