import 'package:flutter/material.dart';

class FractionallySizedBoxSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
      child: FractionallySizedBox(
        widthFactor: 0.8, // 부모 위젯의 너비의 80%를 차지합니다.
        heightFactor: 0.5, // 부모 위젯의 높이의 50%를 차지합니다.
        alignment: Alignment.center, // 자식 위젯을 중앙으로 정렬합니다.
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
