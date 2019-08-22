import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key,this.title}) : super(key : key);
  final String title;
  //可以用wiget来使用这里的东西
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("back"),
        onPressed: (){
          //返回上级页面
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("The 1st"),
          ),
          ListTile(
            title: Text("The 2nd"),
          ),
          ListTile(
            title: Text("The 3rd"),
          ),
        ],
      ),
    );
  }
}
