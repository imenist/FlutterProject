import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("i'm a text"),
        ),
        RaisedButton(
          child: Text("跳转到登录页面"),
          onPressed: (){
            Navigator.pushNamed(context, '/login');
          },
        ),
        RaisedButton(
          child: Text("跳转到注册页面"),
          onPressed: (){
            Navigator.pushNamed(context, '/registerFirst');
          },
        )
      ],
    );
  }
}
