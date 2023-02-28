import 'package:flutter/material.dart';

class SwitchSample extends StatefulWidget {
  const SwitchSample({Key? key}) : super(key: key);

  @override
  State<SwitchSample> createState() => _SwitchSampleState();
}

class _SwitchSampleState extends State<SwitchSample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text('title'),
      subtitle: Text('subtitle'),
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );

    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
