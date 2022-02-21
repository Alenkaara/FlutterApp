import 'package:flutter/material.dart';

class Slaideri extends StatefulWidget {
  const Slaideri({Key? key, required this.SliderTitle}) : super(key: key);
  final String SliderTitle;
  @override
  _Slaideri createState() => _Slaideri();
}

class _Slaideri extends State<Slaideri> {
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.SliderTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider(
            value: age.toDouble(),
            onChanged: (value) {
              setState(() {
                age = value.toInt();
              });
            },
            min: 5,
            max: 100,
          ),
          Text(
            "Dog cuteness level: " + age.toString(),
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
