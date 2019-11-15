import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{

  SearchPage({Key key}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchPageState();
  }

}

class SearchPageState extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchPage'),
      ),
      body:  Text('SearchPage'),
    );
  }
}