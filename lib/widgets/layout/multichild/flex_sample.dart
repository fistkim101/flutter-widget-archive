import 'package:flutter/material.dart';

class FlexSample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 50,
          color: Colors.red,
        ),
        Container(
          width: 75,
          height: 50,
          color: Colors.green,
        ),
      ],
    );
    // return Flex(
    //   direction: Axis.horizontal,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Container(
    //       width: 50,
    //       height: 100,
    //       color: Colors.blue,
    //     ),
    //     Container(
    //       width: 100,
    //       height: 50,
    //       color: Colors.red,
    //     ),
    //     Container(
    //       width: 75,
    //       height: 50,
    //       color: Colors.green,
    //     ),
    //   ],
    // );
  }
}
