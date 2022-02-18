import 'package:flutter/material.dart';

import './color.dart';
import 'bgslid.dart';

void main() => runApp(const FlutterApp());

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  static const appTitle = 'Flutter App by Lehtola & Tervo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(80),
        ),
        Container(
          child: (Image.asset('assets/images/puppy1.jpg')),
          decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.5, color: Colors.black),
                bottom: BorderSide(width: 0.5, color: Colors.black),
                right: BorderSide(width: 0.5, color: Colors.black),
                left: BorderSide(width: 0.5, color: Colors.black),
              ),
              boxShadow: [
                BoxShadow(color: Colors.black, spreadRadius: 3, blurRadius: 7)
              ]),
        ),
        Container(
          child: ColorChanger(),
        ),
        Container(
          child: BgSlid(),
        ),
      ]),
    );
  }
}
