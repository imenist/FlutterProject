import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Tabs/Home.dart';
import '../pages/Tabs/File.dart';
import 'package:appui_v1/pages/Meeting.dart';
import '../pages/Notice.dart';
import '../pages/Announce.dart';
import '../pages/FileRecord.dart';
import '../pages/FileUpload.dart';
import '../pages/Filechoose.dart';


final routes = {
  '/':(context) => Tabs(),
  '/Tabs':(context) => Tabs(),
  '/Tabs2':(context) => Tabs(),
  '/Home':(context) => HomePage(),
  '/File':(context) => FilePage(),
  '/Notice':(context) => NoticePage(),
  '/Announce':(context,{arguments}) => AnnouncePage(arguments: arguments,),
  '/Meeting':(context) => Meetingpage(),
  '/FileRecord':(context) => FileRecordPage(),
  '/FileUpload':(context) => FileUploadPage(),
  '/FileChoose':(context) => FileChoosepage(),
};



//固定跳转传值方法
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if(pageContentBuilder != null){

    if(settings.arguments != null){
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context,arguments:settings.arguments));
      return route;
    } else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};