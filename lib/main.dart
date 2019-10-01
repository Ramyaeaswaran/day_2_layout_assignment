import 'package:flutter/material.dart';

void main() {
  Container container1 = Container(
    width: 100,
    height: 100,
    color: Colors.red,
    //margin: EdgeInsets.symmetric(vertical: 20.0),
  );
  Container container2 = Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  );

  Container container3 =
      Container(width: 100, height: 100, color: Colors.yellow);
  Container container4 =
      Container(width: 100, height: 100, color: Colors.green);
  List<Widget> contain2 = [container3, container4];
  List<Widget> contain1 = [
    container1,
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: contain2,
    ),
    container2
  ];

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                //margin: EdgeInsets.symmetric(vertical: 20.0),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: contain2,
              ),
              container2
            ],
          ),
        ),
      ),
    ),
  ));
}
