import 'package:flutter/material.dart';

class OutlinedButtonSample extends StatelessWidget {
  const OutlinedButtonSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      alignment: Alignment.center,
      child: OutlinedButton(
        onPressed: () {
          print('onPressed');
        },
        child: Text('OutlinedButton'),
        // style: ButtonStyle(
        //   foregroundColor: MaterialStateProperty.all(Colors.red),
        //   overlayColor: MaterialStateProperty.all(Colors.blue),
        // ),
      ),
    );
  }
}
