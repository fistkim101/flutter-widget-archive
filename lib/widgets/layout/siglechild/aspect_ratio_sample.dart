import 'package:flutter/material.dart';

class AspectRatioSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: 100.0,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: 2/3,
        child: Container(
          width: 100.0,
          height: 10.0,
          color: Colors.green,
        ),
      ),
    );
  }
}
