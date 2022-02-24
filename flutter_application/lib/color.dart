import 'dart:math';

import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  @override
  CustomTileState createState() => CustomTileState();
}

class CustomTileState extends State<ColorChanger> {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.grey,
    Colors.pink,
    Colors.orange,
    Colors.limeAccent,
    Colors.indigo
  ];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(10));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(80),
      child: RaisedButton(
        onPressed: () => changeIndex(),
        child: Text('Click me to change the color'),
        color: colors[index],
      ),
    );
  }
}
