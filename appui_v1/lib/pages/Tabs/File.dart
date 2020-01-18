import 'package:flutter/material.dart';

class FilePage extends StatefulWidget {
  @override
  _FilePageState createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children:ListTile.divideTiles(
              context: context,
              tiles: [
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
                          Navigator.pushNamed(context, '/FileUpload');
                        },
                        child: new Padding(
                          padding: new EdgeInsets.all(10.0),
                          child: new Text(
                            '上传文件',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    )
                ),
                ListTile(
                  title: Text("第一次会议记录",style: TextStyle(fontSize:20 ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:(){
                    Navigator.pushNamed(context, '/FileRecord');
                  },
                ),
                ListTile(
                  title: Text("第二次会议记录",style: TextStyle(fontSize:20 ),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:(){
                    Navigator.pushNamed(context, '/FileRecord');
                  },
                ),
              ]).toList(),
        )
    );
  }
}
