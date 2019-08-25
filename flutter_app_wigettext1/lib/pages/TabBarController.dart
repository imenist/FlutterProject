import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}
//Dart语法，可以多继承类
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{

  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
        length: 2,
        vsync: this  //固定写法
    );
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),  //注意
        bottom: TabBar(
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: "热销",),
              Tab(text: "推荐",),
            ]
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child:Text("热销")),
          Center(child:Text("推荐")),
        ],
      ),
    );
  }
}
