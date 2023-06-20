import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../widgets/widgets.dart';

class ProgressSample extends StatefulWidget {
  @override
  _ProgressSampleState createState() => _ProgressSampleState();
}

class _ProgressSampleState extends State<ProgressSample> {
  bool _showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('progress sample'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _showSpinner = !_showSpinner;
              });
            },
            icon: const Icon(
              Icons.star,
              size: 30,
            ),
          ),
        ],
      ),
      body: ModalProgressHUD(
        opacity: 0.2,
        // color: Colors.red,
        color: Colors.grey,
        progressIndicator: Container(
          height: 150,
          width: 150,
          child: LoadingSpinnerLottie(),
        ),
        // progressIndicator: const Icon(
        //   Icons.star_border,
        //   size: 50,
        // ),
        // progressIndicator: const CircularProgressIndicator(),
        // blur: 0.5,
        inAsyncCall: _showSpinner,
        child: Center(
          child: Column(
            children: [
              Text('hello'),
              Text('hello'),
              Text('hello'),
              Text('hello'),
              Text('hello'),
              Text('hello'),
              Text('hello'),
              Text('hello'),
              Text('hello'),
            ],
          ),
          // child: LoadingSpinnerLottie(),
        ),
      ),
    );
  }
}
