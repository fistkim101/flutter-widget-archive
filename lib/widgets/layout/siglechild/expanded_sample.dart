import 'package:flutter/material.dart';

class ExpandedSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Expanded(child: Text('abc'));
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 100,
            width: 200,
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              width: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
