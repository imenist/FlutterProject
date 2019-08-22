import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步注册"),
      ),
      body: Column(
        children: <Widget>[
          Text("请输入验证码"),
          RaisedButton(
            child: Text("下一步"),
            onPressed:(){
              Navigator.pushNamed(context, '/registerThird');
//              通过替换路由来跳转，达到返回根目录的目的，
//              Navigator.of(context).pushReplacementNamed('/registerThird');
            },
          )
        ],
      ),
    );
  }
}
