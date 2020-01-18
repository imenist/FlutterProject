import 'package:flutter/material.dart';

class Meetingpage extends StatefulWidget {
  @override
  _MeetingpageState createState() => _MeetingpageState();
}

class _MeetingpageState extends State<Meetingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("会议"),
      ),
      body:Column(
      children: <Widget>[
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
                    '发起会议',
                    style: new TextStyle(
                        color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            )
        ),
        Container(
        )
      ],
    ),
    );
  }
}
