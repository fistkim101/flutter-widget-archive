import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {
  const ContainerSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Container',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      // constraints: BoxConstraints.tight(Size(200, 100)), // <-- 까보면 width, height 준거로 어차피 제약을 만든다. 여기서는 직접 바로 주는거.
      // alignment: Alignment.center, // <-- child 에 대한 alignment. Container 의 목적 자체가 child 를 랩핑. 분리해서 생각하자.
      height: 100,
      width: 200,
      // margin: Container 의 outside 의 여백을 의미.
      margin: EdgeInsets.all(10),
      // padding: Container 의 inside 방향으로 child 의 충전재를 의미. 즉, padding 이 커질수록 child 가 짜부된다.
      padding: EdgeInsets.all(30),
      // color: Colors.amber, <-- decoration's color 와 공존할 수 없다.
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue,
      ),
    );
  }
}
