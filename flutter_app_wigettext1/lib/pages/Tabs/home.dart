import 'package:flutter/material.dart';
import '../search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //左右
      crossAxisAlignment: CrossAxisAlignment.start,
      //上下
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索界面"),
          onPressed: (){
            //intent用法
            Navigator.pushNamed(context, '/search',arguments: {
              "id": 1123
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("跳转到商品"),
          onPressed: (){
            //intent用法
            Navigator.pushNamed(context, '/product');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("TabBarController跳转"),
          onPressed: (){
            Navigator.pushNamed(context, '/tabbarcontroller');
          },
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("按钮跳转"),
          onPressed: (){
            Navigator.pushNamed(context, '/button');
          },
        )
      ],
    );
  }
}
