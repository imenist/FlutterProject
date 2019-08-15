import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //新建变量
    var titleText = new Text(
      '''strawberry
      ''',
      style: TextStyle(
        fontSize: 35,
      ),
    );

    var subTitle = new Text(
      '''Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg,
      ''',
      style: TextStyle(
        fontSize: 20,
      ),
    );

    var ratings = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        //居中且有分割
        //Row和Text
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Row(
            //聚集
            mainAxisSize: MainAxisSize.min,
            children: [
              new Icon(Icons.star,color: Colors.black,),
              new Icon(Icons.star,color: Colors.black,),
              new Icon(Icons.star,color: Colors.black,),
              new Icon(Icons.star,color: Colors.black,),
              new Icon(Icons.star,color: Colors.black,),
            ],
          ),
          new Text(
            '170 Reviews',
            style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20.0,
            ),
          )
        ],
      ),
    );

    //创建一个新的style，简化代码
    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );


    var iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new Column(
              children: [
                new Icon(Icons.kitchen, color: Colors.green[500]),
                new Text('PREP:'),
                new Text('25 min'),
              ],
            ),
            new Column(
              children: [
                new Icon(Icons.timer, color: Colors.green[500]),
                new Text('COOK:'),
                new Text('1 hr'),
              ],
            ),
            new Column(
              children: [
                new Icon(Icons.restaurant, color: Colors.green[500]),
                new Text('FEEDS:'),
                new Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    var leftColumn = new Container(
      padding: new EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
      child: new Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    Widget rightColumn = new Image.asset(
      'images/lake.jpg',
      width: 500,
      height: 400,
      fit: BoxFit.cover,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new Scaffold(
        body: new Center(
          child: new Container(
            //从左侧，顶部，右侧和底部的偏移量添加margin
            margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
            height: 600.0,
            //Card相当于容器，有一个孩子。可以接受Row等widget，可以设置圆框
            child: new Card(
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    width: 550,
                    child: leftColumn,
                  ),
                  rightColumn,
                ],
              ),
              //card属性，可以设置半径14的圆角
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),
            ),
          ),
        )
      )
    );
  }
}


