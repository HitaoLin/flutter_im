import 'package:flutter/material.dart';

//加载页面
class LoadingPage extends StatefulWidget{

  LoadingPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoadingPageState();
  }

}

class LoadingPageState extends State<LoadingPage>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //在加载页面停顿3秒
    Future.delayed(Duration(seconds: 3),(){
      print('Flutter即时通讯App界面实现...');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        children: <Widget>[
          //加载页面居中背景图 使用cover模式
          Image.asset('images/loading.jpeg',fit: BoxFit.cover,),
        ],
      ),
    );
  }
}