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
class LayoutDemo extends StatefulWidget {
  @override
  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Chip(
          label: Text('${this.countNum}'),
        ),
        RaisedButton(
          child: Text("Button"),
          onPressed: (){
            setState(() {
              this.countNum++;
            });
          },
        )
      ],
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
