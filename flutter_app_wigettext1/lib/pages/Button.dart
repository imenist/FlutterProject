import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮页"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print("设置");
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //一定要带onPress
              RaisedButton(
                child: Text("普通"),
                onPressed: () {
                  print("普通按钮");
                },
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                child: Text("颜色"),
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: () {
                  print("带颜色按钮");
                },
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                child: Text("阴影"),
                elevation: 20,
                onPressed: () {
                  print("带阴影按钮");
                },
              ),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("图标"),
                onPressed: (){
                  print("图标按钮");
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 350,
                child: RaisedButton(
                  child: Text("测试高度宽度"),
                  color: Colors.green,
                  onPressed: () {
                    print("测试宽高");
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                //可以改变高度
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(15.0),
                  child: RaisedButton(
                    child: Text("自适应按钮"),
                    color: Colors.green,
                    onPressed: () {
                      print("自适应按钮");
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆角'),
                color: Colors.pink,
                textColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)
                ),
                onPressed: (){
                  print("shape");
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆形'),
                color: Colors.pink,
                textColor: Colors.orange,
                //圆形
                shape: CircleBorder(
                  side: BorderSide(
                    color: Colors.pink
                  )
                ),
                //水波纹颜色改变
                splashColor: Colors.orange,
                onPressed: (){
                  print("shape");
                },
              ),
              FlatButton(
                child: Text("扁平"),
                onPressed: (){
                  print("扁平");
                },
              ),
              OutlineButton(
                child: Text("带边框"),//无效果
                color: Colors.orange,
                onPressed: (){
                  print("带边框");
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text("注册"),
                    color: Colors.blue,
                    onPressed: (){

                    },
                  ),
                  RaisedButton(
                    child: Text("登录"),
                    color: Colors.yellow,
                    onPressed: (){

                    },
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
