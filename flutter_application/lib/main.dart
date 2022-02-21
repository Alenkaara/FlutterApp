import 'package:flutter/material.dart';

import './color.dart';
import './bgslid.dart';
import './drawer.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: Text('Hamburger menu'),
            ),
            ListTile(
              title: const Text('Filler 1'),
            ),
            ListTile(
              title: const Text('Filler 2'),
            ),
          ],
        ),
      ),
      body: Column(children: [
        Container(
          height: 20,
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
          height: 200,
          child: ColorChanger(),
        ),
        Container(
          width: 300,
          height: 167,
          child: Slaideri(SliderTitle: 'Dog cuteness Slider'),
        ),
      ]),
    );
  }
}
