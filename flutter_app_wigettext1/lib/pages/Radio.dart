import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  @override
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  var sex = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("radio"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Text("男"),
            Radio(
              value: 1,
              onChanged: (v){
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
            ),
            Text("女"),
            Radio(
              value: 2,
              onChanged: (v){
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
            ),
          ],
        ),

      ),
    );
  }
}
