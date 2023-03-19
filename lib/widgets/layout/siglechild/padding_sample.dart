import 'package:flutter/material.dart';

class PaddingSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      height: 300,
      width: 300,
      // padding: EdgeInsets.all(1),
      // padding: EdgeInsets.all(149),
      child: Padding(
        padding: EdgeInsets.all(149),
        child: Container(
          // height: 200,
          // width: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}
