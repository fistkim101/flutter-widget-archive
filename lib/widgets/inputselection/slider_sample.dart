import 'package:flutter/material.dart';

class SliderSample extends StatefulWidget {
  const SliderSample({Key? key}) : super(key: key);

  @override
  State<SliderSample> createState() => _SliderSampleState();
}

class _SliderSampleState extends State<SliderSample> {
  double _currentSliderValue = 20;
  RangeValues _currentRangeSliderValue = RangeValues(1, 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(_currentSliderValue.toString()),
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            // divisions: 10,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          Text(_currentRangeSliderValue.start.toString()),
          Text(_currentRangeSliderValue.end.toString()),
          RangeSlider(
            values: _currentRangeSliderValue,
            min: 0,
            max: 100,
            divisions: 10,
            labels: RangeLabels(
              _currentRangeSliderValue.start.toString(),
              _currentRangeSliderValue.end.toString(),
            ),
            onChanged: (RangeValues newValue) {
              setState(() {
                _currentRangeSliderValue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
