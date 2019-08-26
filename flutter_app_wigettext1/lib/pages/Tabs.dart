import 'package:flutter/material.dart';
import 'Tabs/home.dart';
import 'Tabs/settings.dart';
import 'Tabs/category.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index = 0}) : super(key : key);
  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  _TabsState(index){
    this._currentIndex = index;
  }
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                      accountName: Text("imenist"),
                      accountEmail: Text("243260197@qq.com"),
                      currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://c-ssl.duitang.com/uploads/item/201305/26/20130526140022_5fMJe.thumb.1500_0.jpeg"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://c-ssl.duitang.com/uploads/blog/201404/24/20140424153000_njnLA.jpeg"),
                          fit: BoxFit.cover,
                      )
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.asset('images/6.png'),
                      Image.asset('images/19.png'),
                    ],
                  ),
//普通的drawerheader
//                  child: DrawerHeader(
//                      child:Text("你好flutter"),
//                    decoration: BoxDecoration(
//                      //设置背景颜色
////                      color: Colors.yellow,
//                    image: DecorationImage(
//                        image: NetworkImage("https://c-ssl.duitang.com/uploads/item/201305/26/20130526140022_5fMJe.thumb.1500_0.jpeg"),
//                        fit: BoxFit.cover,
//                    ),
//                    ),
//                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户"),
              onTap: (){
                //pop是从用户中心返回时直接返回到界面，不弹出侧边栏
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/user");
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("右侧"),
      ),
    );
  }
}