import 'package:flutter/material.dart';

class App extends StatefulWidget{

  App({Key key}):super (key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }

}

class AppState extends State<App>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('即时通讯'),
      ),
      body: Text('即时通讯'),
    );
  }
}