import 'package:flutter/material.dart';

class FileChoosepage extends StatefulWidget {
  @override
  _FileChoosepageState createState() => _FileChoosepageState();
}

class _FileChoosepageState extends State<FileChoosepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("上传文件地点"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_upward),
            tooltip: '上传',
            onPressed: (){

            },
          )
        ],
      ),
        body:Container(
            child: ListView(
              children:ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ListTile(
                      title: Text("第一次会议",style: TextStyle(fontSize:20 ),),
                      selected: true,
                      trailing: Icon(Icons.check_circle),
                    ),
                    ListTile(
                      title: Text("第二次会议",style: TextStyle(fontSize:20 ),),
                      trailing: Icon(Icons.check_circle_outline),
                    ),
                  ]).toList(),
            )
        )
    );
  }
}
