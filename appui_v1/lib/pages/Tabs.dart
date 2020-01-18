import 'package:flutter/material.dart';
import '../pages/Tabs/home.dart';
import '../pages/Tabs/File.dart';


class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);
  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  var _pageController = new PageController(initialPage: 0);
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [
    HomePage(),
    FilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
                icon: new Container(
                  padding: EdgeInsets.all(3.0),
                  child: new CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://c-ssl.duitang.com/uploads/blog/201404/24/20140424153000_njnLA.jpeg'),
                  ),
                ),
                onPressed: () {}),
            title: Text('用户名'),
            actions: <Widget>[
              new IconButton(
                icon: Icon(Icons.camera_enhance),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.pushNamed(context, '/Notice');
                },
              ),
            ],
          ),
          body: new PageView.builder(
              onPageChanged: _pageChange,
              controller: _pageController,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return _pageList[_currentIndex];
              }),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._currentIndex,
            onTap: (int index) {
              setState(() {
                this._currentIndex = index;
              });
            },
            iconSize: 40,
            fixedColor: Colors.blue,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("主页"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.insert_drive_file),
                title: Text("文件"),
              )
            ],
          ),
          floatingActionButton: new FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Meeting');
            },
            child: Icon(Icons.forum),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
        onWillPop: null);
  }

  void _pageChange(int index) {
    setState(() {
      if (_currentIndex != index) {
        _currentIndex = index;
      }
    });
  }
}
