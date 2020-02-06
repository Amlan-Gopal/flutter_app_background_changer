import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Change Background",
      theme: ThemeData(
          primarySwatch: Colors.grey
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Color myColor = Color(0xff7532a8);
  List<Color> randomColors = [
    Color(0xff7532a8),
    Color(0xffa83271),
    Color(0xff18de9f),
    Color(0xfff5410a),
    Color(0xffd61c28),
    Color(0xffcc00ff),
    Color(0xffffff00),
    Color(0xffffff00)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: myColor,
        ),
        child: FlatButton(
          onPressed: changeColor,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Text(
            "Change it",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
              color: Colors.white
            ),
          ),
        ),
    );
  }

  void changeColor() {
      int index = Random().nextInt(randomColors.length);
      setState(() {
        myColor = randomColors[index];
      });
  }
}


