import 'package:flutter/material.dart';

class ConstrainedBoxSample extends StatefulWidget {
  @override
  State<ConstrainedBoxSample> createState() => _ConstrainedBoxSampleState();
}

class _ConstrainedBoxSampleState extends State<ConstrainedBoxSample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: ConstrainedBox(
      //   constraints: BoxConstraints(minHeight: 200),
      //   child: ElevatedButton(
      //     onPressed: () {},
      //     child: Text('button'),
      //   ),
      // ),
      child: ConstrainedBox(
        // constraints: BoxConstraints(maxWidth: 500),
        constraints: BoxConstraints(maxWidth: 70),
        child: Text('buttonbuttonbuttonbuttonbuttonbuttonbutton'),
      ),
    );
  }
}
