import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}


class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      color: Colors.red,
      padding: EdgeInsets.all(15),
      child: Wrap(
        spacing: 10,  //水平间隔
        runSpacing: 15, //上下间隔
        //alignment: WrapAlignment.end, //右对齐
        children: <Widget>[
          MyButton("1"),
          MyButton("2"),
          MyButton("3"),
          MyButton("4"),
          MyButton("5"),
          MyButton("6"),
          MyButton("7"),
          MyButton("8"),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget{

  final String text;

  const MyButton(this.text,{Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){
      },
    );
  }
}
