import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录界面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 49,),
            Text("这是一个登录界面"),
            RaisedButton(
              child: Text("登录"),
              onPressed: (){
                Navigator.of(context).pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
