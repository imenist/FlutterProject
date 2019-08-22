import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("通过输入id注册，第一步"),
      ),
      body: Column(
        children: <Widget>[
          Text("请输入你的游戏id"),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text("下一步"),
            onPressed: (){
              Navigator.pushNamed(context, '/registerSecond');
//              通过替换路由来跳转，达到返回根目录的目的，
//              Navigator.of(context).pushReplacementNamed('/registerSecond');
            },
          )
        ],
      ),
    );
  }
}
