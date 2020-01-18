import 'package:flutter/material.dart';

class AnnouncePage extends StatefulWidget {
  var arguments;
  AnnouncePage({Key key,this.arguments}) : super(key : key);
  @override
  _AnnouncePageState createState() => _AnnouncePageState(arguments:this.arguments);
}

class _AnnouncePageState extends State<AnnouncePage> {
  var arguments;
  _AnnouncePageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('通知'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Text("${arguments != null ? arguments['content'] : '0'}"),
            ),
            Container(
                margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10),
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
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
                        '回复',
                        style: new TextStyle(
                            color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                )
            )
          ],
        )
    );
  }
}
