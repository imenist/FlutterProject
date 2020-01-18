import 'package:flutter/material.dart';
import 'package:appui_v1/routes/Route.dart';
import '../pages/Tabs.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
        iconTheme: new IconThemeData(color: Colors.red),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          new Column(
              mainAxisSize: MainAxisSize.max,
              //MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。
              mainAxisAlignment: MainAxisAlignment.start,
              //[]里面填入子元素，也就是控件
              children: <Widget>[
                Padding(
                    padding: new EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                    child: Container(
                      //本地图片
                      child: new Image.network(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578848332372&di=ddef955ebd6f7ee5e66d2ef1a92ead72&imgtype=0&src=http%3A%2F%2Fwww.apkbus.com%2Fdata%2Fattachment%2Falbum%2F201911%2F01%2F100806raod7k8q8wemujoj.png',
                        scale: 1.0,
                      ),
                      width: 300.0,
                      height: 200.0,
                      //                color: Colors.lightBlue,
                    )),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  //用户名输入框
                  child: TextField(
                    //控制器
                    controller: _userNameController,
                    maxLength: 11,
                    maxLines: 1,
                    autocorrect: true,
                    decoration: new InputDecoration(
                      labelText: "账号",
                      helperText: "用户名",
                      icon: new Icon(Icons.account_box),
                    ),
                    onChanged: (text) {
                      //内容改变的回调
                      print('change $text');
                    },
                    onSubmitted: (text) {
                      //内容提交(按回车)的回调
                      print('submit $text');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  //用户名输入框
                  child: TextField(
                    //控制器
                    controller: _passwordController,
                    maxLength: 11,
                    maxLines: 1,
                    autocorrect: true,
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "密码",
                      helperText: "请输入密码",
                      icon: new Icon(Icons.account_box),
                    ),
                    onChanged: (text) {
                      print('change $text');
                    },
                    onSubmitted: (text) {
                      print('submit $text');
                    },
                  ),
                ),
                Container(
                  width: 500,
                  margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  //类似cardview
                  child: new Card(
                    color: Colors.blueAccent,
                    elevation: 5.0,
                    //按钮
                    child: new FlatButton(
                        onPressed:(){
//                          Navigator.of(context).pushNamed('/Tabs');
                          Navigator.of(context).pushAndRemoveUntil(
                              new MaterialPageRoute(builder: (context)=>new Tabs()), (route)=>route==null
                          );
                        },
                      child: new Padding(
                        padding: new EdgeInsets.all(10.0),
                          child: new Text(
                            '登录',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 16.0),
                          ),
                      ),
                  ),
                )
                )
        ],
      ),
    ])
    );
  }
}
