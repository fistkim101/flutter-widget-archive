import 'package:flutter/material.dart';

class ToolTipSample extends StatefulWidget {
  const ToolTipSample({Key? key}) : super(key: key);

  @override
  State<ToolTipSample> createState() => _ToolTipSampleState();
}

class _ToolTipSampleState extends State<ToolTipSample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Tooltip(
          triggerMode: TooltipTriggerMode.tap,
          showDuration: const Duration(seconds: 5),
          message: 'I am a Tooltip 1',
          child: Text('Hover over the text to show a tooltip. 1'),
        ),
        Tooltip(
          triggerMode: TooltipTriggerMode.tap,
          showDuration: const Duration(seconds: 5),
          message: 'I am a Tooltip 2',
          child: Text('Hover over the text to show a tooltip. 2'),
        ),
      ],
    );
  }
}
