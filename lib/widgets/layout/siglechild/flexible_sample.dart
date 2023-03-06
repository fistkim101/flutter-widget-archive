import 'package:flutter/material.dart';

class FlexibleSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.red,
            height: 50,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.blue,
            height: 50,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.green,
            height: 50,
          ),
        ),
      ],
    );
  }
}
