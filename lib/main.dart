import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}
class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _color=Colors.amber;
  _generateRandomColor(){
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _color=_generateRandomColor();
        });
      },
        child: Container(
            color:_color,
        )
    );
  }
}