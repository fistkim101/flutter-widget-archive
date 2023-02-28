import 'package:flutter/material.dart';

class DialogSample extends StatefulWidget {
  const DialogSample({Key? key}) : super(key: key);

  @override
  State<DialogSample> createState() => _DialogSampleState();
}

class _DialogSampleState extends State<DialogSample> {
  Future<void> _showMaterialDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          // elevation: 24,
          // backgroundColor: Colors.blue,
          // shape: CircleBorder(),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('action1'),
              onPressed: () {
                Navigator.pop(context);
                print('action1');
              },
            ),
            TextButton(
              child: const Text('action2'),
              onPressed: () {
                Navigator.pop(context);
                print('action2');
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _showMaterialDialog(),
      child: Text('Click'),
    );
  }
}
