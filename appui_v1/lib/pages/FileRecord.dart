import 'package:flutter/material.dart';

class FileRecordPage extends StatefulWidget {
  @override
  _FileRecordPageState createState() => _FileRecordPageState();
}

class _FileRecordPageState extends State<FileRecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("第一次会议"),
      ),
        body:Container(
            child: ListView(
              children:ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ListTile(
                      title: Text("图片.jpg",style: TextStyle(fontSize:20 ),),
                    ),
                    ListTile(
                      title: Text("文档.doc",style: TextStyle(fontSize:20 ),),
                    ),
                  ]).toList(),
            )
        )
    );
  }
}
