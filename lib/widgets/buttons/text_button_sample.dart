import 'package:flutter/material.dart';

class TextButtonSample extends StatefulWidget {
  const TextButtonSample({Key? key}) : super(key: key);

  @override
  State<TextButtonSample> createState() => _TextButtonSampleState();
}

class _TextButtonSampleState extends State<TextButtonSample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(
            // foregroundColor: Colors.red,
            // backgroundColor: Colors.amber,
            ),
        // onPressed: null,
        onPressed: () {
          print('onPressed');
        },
        child: Text('TextButtonSample'),
      ),
    );
  }
}
