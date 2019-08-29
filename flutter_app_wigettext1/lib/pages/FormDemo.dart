import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}


class _FormDemoPageState extends State<FormDemoPage> {

  var _username;
  var _password;
  int _sex;
  bool _game = false;
  bool _swim = false;
  bool _read = false;

  List hobby =[
    {
      "checked":false,
      "title":"玩游戏",
    },
    {
      "checked":false,
      "title":"游泳",
    },
    {
      "checked":false,
      "title":"读书",
    },
  ];


  List<Widget> _gethobby(){
    List<Widget> tempList = [];

    for(var i=0;i<this.hobby.length;i++){
      tempList.add(
        Row(
          children: <Widget>[
            Text(this.hobby[i]["title"] + ":"),
          Checkbox(
              value: this.hobby[i]["checked"],
              onChanged:(value){
                setState(() {
                  this.hobby[i]["checked"] = value;
                });
              }
          )
          ],
        ),
      );
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormDemo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入姓名",
                labelText: "姓名",
              ),
              onChanged: (v){
                setState(() {
                  this._username = v;
                });
              },
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                      this._sex = v;
                    });
                  },
                  groupValue: this._sex,
                ),
                Text("女"),
                Radio(
                  value: 2,
                  onChanged: (v){
                    setState(() {
                      this._sex = v;
                    });
                  },
                  groupValue: this._sex,
                )
              ],
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "请输入密码",
                labelText: "密码",
              ),
              onChanged: (v){
                setState(() {
                  this._password = v;
                });
              },
            ),
            SizedBox(height: 10,),
            Column(
              children: this._gethobby(),
            ),
//            CheckboxListTile(
//              value: this._game,
//              onChanged: (v){
//                setState(() {
//                  this._game = v;
//                });
//              },
//              title: Text("玩游戏"),
//              subtitle: Text("什么游戏都玩，LOl，dota，吃鸡，王者，fgo"),
//              secondary: Icon(Icons.games),
//            ),
//            CheckboxListTile(
//              value: this._swim,
//              onChanged: (v){
//                setState(() {
//                  this._swim = v;
//                });
//              },
//              title: Text("游泳"),
//            ),
//            CheckboxListTile(
//              value: this._read,
//              onChanged: (v){
//                setState(() {
//                  this._read = v;
//                });
//              },
//              title: Text("读书"),
//              subtitle: Title(color: Colors.red, child: Text("读书读到小标题的标题")),
//            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text("提交"),
                onPressed: (){
                  setState(() {
                    print("姓名:"+this._username);
                    //判断男还是女
                    print("性别:"+(this._sex == 1?"男" : "女"));
                    print("密码:"+this._password);
                    //测试运算符~/,表示除，没有小数
                    print(15 ~/ 10);
                    printHobby();
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void printHobby(){
    print("爱好:");
    for(var i=0; i<hobby.length;i++){
      if(hobby[i]["checked"]){
        print(hobby[i]["title"]);
      }
    }
  }

}
