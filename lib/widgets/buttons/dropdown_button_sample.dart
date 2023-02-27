import 'package:flutter/material.dart';

class DropDownButtonSample extends StatefulWidget {
  const DropDownButtonSample({Key? key}) : super(key: key);

  @override
  State<DropDownButtonSample> createState() => _DropDownButtonSampleState();
}

class _DropDownButtonSampleState extends State<DropDownButtonSample> {
  late String _selectedValue;

  @override
  void initState() {
    _selectedValue = 'first';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        // icon: const Icon(Icons.arrow_downward),
        // elevation: 40,
        style: const TextStyle(color: Colors.red),
        // underline: Container(
        //   height: 2,
        //   color: Colors.deepPurpleAccent,
        // ),
        value: _selectedValue,
        items: ['first', 'second', 'third'].map((e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
        onChanged: (String? selected) {
          setState(() {
            _selectedValue = selected!;
          });
        },
      ),
    );
  }
}
