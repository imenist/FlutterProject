import 'package:flutter/material.dart';


class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("发布通知"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(10, 40, 10, 30),
            child: TextField(
                  onChanged: (String data){
                    print(data);
                  },
                  maxLines: 10,
                  decoration: InputDecoration(border: OutlineInputBorder(),),
            ),
          ),
          Container(
              width: 500,
              margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              //类似cardview
              child: new Card(
                color: Colors.blueAccent,
                elevation: 5.0,
                //按钮
                child: new FlatButton(
                  onPressed:(){

                  },
                  child: new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Text(
                      '发布',
                      style: new TextStyle(
                          color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
