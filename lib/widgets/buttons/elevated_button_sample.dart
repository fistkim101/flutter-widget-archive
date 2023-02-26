import 'package:flutter/material.dart';

class ElevatedButtonSample extends StatelessWidget {
  const ElevatedButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      alignment: Alignment.center,
      // child: ElevatedButton.icon(
      //   onPressed: () {},
      //   icon: Icon(Icons.star),
      //   label: Text('label'),
      // ),
      child: ElevatedButton(
        onPressed: () {
          print('onPressed');
        },
        onLongPress: () {
          print('onLongPress');
        },
        child: Text('ElevatedButton'),
      ),
    );
  }
}
