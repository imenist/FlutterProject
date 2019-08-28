import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {

  var _username = new TextEditingController();
  var _password;
  bool flag =true;

  @override
  void initState() {
    // TODO: implement initState
    _username.text = '初始值';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(height: 20,),
            TextField(
              //密码框
//              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: "请输入搜索的内容",
                border: OutlineInputBorder(),
                labelText: '用户名',
              ),
              controller: _username,
              onChanged: (value){
                setState(() {
                  _username.text = value;
                });
              },
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: '密码',
              ),
              onChanged: (value){
                _password = value;
              },
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text("登录"),
                onPressed: (){
                  print(_username.text);
                  print(_password);
                },
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.flag,
                  onChanged: (v){
                    setState(() {
                      this.flag = v;
                    });
                  },
                  activeColor: Colors.red,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(this.flag ? "选中" : "未选中"),
              ],
            ),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v){
                setState(() {
                this.flag = v;
                });
              },
              title: Text("checkboxtile"),
              subtitle: Text("小标题"),
              secondary: Icon(Icons.flag),
            ),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v){
                setState(() {
                this.flag = v;
                });
              },
              title: Text("checkboxtile"),
              subtitle: Text("小标题"),
              secondary: Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}
