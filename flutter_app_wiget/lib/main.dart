import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      //留空,不加则居左，靠在一起
      padding: const EdgeInsets.all(32.0),
      //child表示只有一个元素，children则表示数组(有多个元素)，这里表示“行”这个元素（不是指只有一行）
      child: new Row(
        children: [
          //要使得text占大部分位置，要放在Expanded里面，会利用剩余位置(除图标外的)
          //这里的Expanded与Icon和Text处于同一级数，所以Expanded内设置了两列，对于Icon等来说没关系
          new Expanded(
            //添加“列”的元素
            child: new Column(
              //使该列子项左对齐
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //container与Text同级数，用Container来获得更多属性
                //是结合多种特征的widget
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );


    Column buildButtonColumn(IconData icon, String label) {
      //primaryColor == 原色
      Color color = Theme
          .of(context)
          .primaryColor;

      return new Column(
        //在行的主轴方向平均分配每个列占据的列空间
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          new Icon(icon, color: color),
          new Container(
            //这里是Icon与Text之间的距离,因为加了Top(之所以是与Icon)
            //如果换成bottom，则是与下方文本的距离
            //margin相当与padding，这里可以说是与其他布局的距离
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                //字体轻重(深浅)
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    //创建一个按钮部件(一行按钮)
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
          buildButtonColumn(Icons.star, 'stars'),
        ],
      ),
    );

    //创建文本部件
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        //设置为true则能够多行显示，否则只能显示一行(显示不全)
        softWrap: true,
      ),
    );


    //返回一个
    return new MaterialApp(
      //此处的title表示应用的名字
      title: 'Flutter Demo',
      //设置应用主题
      theme: new ThemeData(
        //上滑或者下滑的时候的滑布颜色
        primarySwatch: Colors.red,
      ),
      //应用默认所显示的界面Widget,用来定义打开页面时所显示的界面
      //Scaffold表示一种布局结构
      home: new Scaffold(
        //设置为listview而不用center表示在小设备时候可以滑动
        body: new ListView(
          children: [
            //需要引入照片时，要在.yaml文件中flutter下添加asset:照片路径(可以是文件夹)
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              //fit表示图像应该尽可能小，但覆盖整个渲染框
              fit: BoxFit.cover,
            ),
            //声明引入哪些widget
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
        //该活动的标题栏
        appBar: new AppBar(
          title: new Text("First page"),
        ),
      ),
    );
  }
}

