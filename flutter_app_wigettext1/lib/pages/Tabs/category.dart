import 'package:flutter/material.dart';
import '../Form.dart';


class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到表单页面并赋值"),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => FormPage(title: "hello",)
              )
            );
          },
        )
      ],
    );
  }
}
