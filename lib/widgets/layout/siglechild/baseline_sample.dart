import 'package:flutter/material.dart';

class BaseLineSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        height: 150,
        width: 150,
        child: Baseline(
          // baseline: 0,
          // baseline: 150,
          baseline: 75,
          baselineType: TextBaseline.alphabetic,
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
