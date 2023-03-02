import 'package:flutter/material.dart';

class StepperSample extends StatefulWidget {
  const StepperSample({Key? key}) : super(key: key);

  @override
  State<StepperSample> createState() => _StepperSampleState();
}

class _StepperSampleState extends State<StepperSample> {
  int _index = 0;

  Step _buildStep(String title, String content) {
    return Step(
      title: Text('title : $title'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Text('content : $content'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index < 19) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: List.generate(20, (index) => index + 1)
          .map((e) => _buildStep(e.toString(), e.toString()))
          .toList(),
      // steps: <Step>[
      //   Step(
      //     title: const Text('Step 1 title'),
      //     content: Container(
      //         alignment: Alignment.centerLeft,
      //         child: const Text('Content for Step 1')),
      //   ),
      //   const Step(
      //     title: Text('Step 2 title'),
      //     content: Text('Content for Step 2'),
      //   ),
      // ],
      controlsBuilder: (BuildContext context, ControlsDetails details) { // 구현 안할시 default 사용됨
        return Row(
          children: [
            ElevatedButton(
              onPressed: details.onStepContinue,
              child: Text('다음 단계'),
            ),
            // TextButton(
            //   onPressed: details.onStepContinue,
            //   child: const Text('Next'),
            // ),
            SizedBox(
              width: 10,
            ),
            OutlinedButton(
              onPressed: details.onStepCancel,
              child: const Text('이전 단계'),
            ),
          ],
        );
      },
    );
  }
}
