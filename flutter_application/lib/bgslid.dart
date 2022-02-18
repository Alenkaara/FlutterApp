import 'package:flutter/material.dart';

class Bgslid extends StatefulWidget {
  const Bgslid({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Slider> {
  RangeValues _rangeSliderDiscreteValues = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _rangeSliderDiscreteValues,
      min: 0,
      max: 100,
      labels: RangeLabels(
        _rangeSliderDiscreteValues.start.round().toString(),
        _rangeSliderDiscreteValues.end.round().toString(),
      ),
      onChanged: (values) {
        setState(() {
          _rangeSliderDiscreteValues = values;
        });
      },
    );
  }
}
