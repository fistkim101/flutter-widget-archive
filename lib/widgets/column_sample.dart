import 'package:flutter/material.dart';

class ColumnSample extends StatelessWidget {
  const ColumnSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
        ),
        // Container(
        //   height: 50,
        //   width: 50,
        //   color: Colors.blue,
        // ),
      ],
    );
  }
}
