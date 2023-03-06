import 'package:flutter/material.dart';

class AlignSample extends StatelessWidget {
  const AlignSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: 120.0,
        // width: 120.0,
        color: Colors.blue[50],
        child: const Align(
          alignment: Alignment.bottomLeft,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
