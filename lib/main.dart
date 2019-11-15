import 'package:flutter/material.dart';
import 'package:flutter_im/loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'app.dart';
import 'search.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '聊天室',
      //自定义主题
      theme: mDefaultTheme,
      //添加路由表
      routes: <String,WidgetBuilder>{
        'app':(BuildContext context) => new App(),
        "/friends":(_) => new WebviewScaffold(
          //webview插件
            url: "https://flutter.io/",
          appBar: new AppBar(
            title: Text('Flutter 官网'),
          ),
          withZoom: true,//启用缩放webview
          withLocalStorage: true,//本地缓存
        ),
        'search':(BuildContext context)=>SearchPage(),//搜索页面路由
      },
      //指定首页，默认为加载页面
      home: LoadingPage(),
    );
  }
}


final ThemeData mDefaultTheme = new ThemeData(
    primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.green,
);


