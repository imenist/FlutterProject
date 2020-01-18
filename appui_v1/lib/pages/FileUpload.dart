import 'package:flutter/material.dart';

class FileUploadPage extends StatefulWidget {
  @override
  _FileUploadPageState createState() => _FileUploadPageState();
}

class _FileUploadPageState extends State<FileUploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("上传文件"),
      ),
      body: Container(
          child: ListView(
        children: ListTile.divideTiles(context: context, tiles: [
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
                      '选择文件',
                      style: new TextStyle(
                          color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              )
          ),
          ListTile(
            title: Text(
              "第一次会议记录.jpg",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            title: Text(
              "第二次会议记录.doc",
              style: TextStyle(fontSize: 20),
            ),
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
                    Navigator.pushNamed(context, '/FileChoose');
                  },
                  child: new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Text(
                      '上传',
                      style: new TextStyle(
                          color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              )
          )
        ]).toList(),
      )),
    );
  }
}
