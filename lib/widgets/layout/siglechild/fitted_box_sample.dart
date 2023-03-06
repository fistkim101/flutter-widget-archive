import 'package:flutter/material.dart';

class FittedBoxSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      ),
    );
  }
}
