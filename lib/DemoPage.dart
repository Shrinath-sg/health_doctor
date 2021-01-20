import 'package:flutter/material.dart';

class NewP1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return NewP1State();
  }

}
class NewP1State extends State<NewP1>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("page2"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }

}