import 'package:flutter/material.dart';

class TransformSample extends StatefulWidget {
  @override
  State<TransformSample> createState() => _TransformSampleState();
}

class _TransformSampleState extends State<TransformSample> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}
