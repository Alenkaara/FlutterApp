import 'dart:math';

// import 'package:audioplayers/audioplayers.dart';
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

  // late Color color;
  // late final AudioCache audioCache;

  @override
  void initState() {
    super.initState();

    // color = Colors.blue;
    // audioCache = AudioCache(
    //   prefix: 'audio/',
    //   fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    // );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.all(80),
    //   color: color,
    //   child: ListTile(
    //     title: Text('Click me to change the color'),
    //     onTap: () {
    //       setState(() {
    //         // audioCache.play('dogbark.mp3');
    //         // if (color == Colors.red) {
    //         //   color = Colors.green;
    //         // } else {
    //         color:
    //         Colors.primaries[Random().nextInt(Colors.primaries.length)];
    //         // }
    //       });
    //     },
    //   ),
    // );
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
