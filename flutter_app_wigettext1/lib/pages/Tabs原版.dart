import 'package:flutter/material.dart';
import 'Tabs/home.dart';
import 'Tabs/settings.dart';
import 'Tabs/category.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        //按钮点击事件
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 40,     //改变图标大小
        fixedColor: Colors.blue, //改变填充颜色
        type: BottomNavigationBarType.fixed,  //配置底部按钮可以多个，以防挤不下
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          )
        ],
      ),
    );
  }
}