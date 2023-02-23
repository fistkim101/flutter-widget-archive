import 'package:flutter/material.dart';

class RowSample extends StatelessWidget {
  const RowSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 20,
          width: 20,
          color: Colors.red,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.blue,
        ),
      ],
    );
  }
}
