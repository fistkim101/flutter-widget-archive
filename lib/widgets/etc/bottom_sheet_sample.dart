import 'package:flutter/material.dart';

class BottomSheetSample extends StatefulWidget {
  const BottomSheetSample({Key? key}) : super(key: key);

  @override
  State<BottomSheetSample> createState() => _BottomSheetSampleState();
}

class _BottomSheetSampleState extends State<BottomSheetSample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Center(
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20.0), // 설정 안해주면 칼각 bottom sheet
                ),
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min, // max 하면 화면 꽉차버린다
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'showBottomSheet',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('click'),
          ),
        ),
      ),
    );
  }
}
