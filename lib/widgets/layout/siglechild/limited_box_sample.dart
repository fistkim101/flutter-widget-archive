import 'dart:math';

import 'package:flutter/material.dart';

class LimitedBoxSample extends StatelessWidget {
  List<Color> colors = [Colors.red, Colors.blue, Colors.orange, Colors.green];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(20, (index) => index + 1)
          .map(
            // (e) => Container(
            //   height: 100,
            //   decoration: BoxDecoration(
            //     color: colors[random.nextInt(3)],
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            // ),
            (e) => LimitedBox(
              maxHeight: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: colors[random.nextInt(3)],
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
