import 'package:flutter/material.dart';

class SnackBarSample extends StatefulWidget {
  const SnackBarSample({Key? key}) : super(key: key);

  @override
  State<SnackBarSample> createState() => _SnackBarSampleState();
}

class _SnackBarSampleState extends State<SnackBarSample> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.star),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
            content: const Text('Awesome SnackBar!'),
            duration: const Duration(milliseconds: 1500),
            // width: 280.0,
            // Width of the SnackBar.
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0, // Inner padding for SnackBar content.
            ),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        );
      },
      // onPressed: () {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //       content: const Text('Awesome Snackbar!'),
      //       action: SnackBarAction(
      //         label: 'Action',
      //         onPressed: () {
      //           // Code to execute.
      //         },
      //       ),
      //     ),
      //   );
      // },
    );
  }
}
