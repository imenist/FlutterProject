import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三部注册，完成注册"),
      ),
      body: Column(
        children: <Widget>[
          Text("输入密码以完成注册"),
          RaisedButton(
            child: Text("返回到登录界面"),
            onPressed:(){
              //返回到根目录(tabs中所指示的current页面)，仅有该按钮有这个功能
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new Tabs(index: 2,)),
                  (route) => route == null
              );
            },
          )
        ],
      ),
    );
  }
}
