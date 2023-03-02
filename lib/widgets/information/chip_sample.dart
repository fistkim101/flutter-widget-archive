import 'package:flutter/material.dart';

class ChipSample extends StatefulWidget {
  const ChipSample({Key? key}) : super(key: key);

  @override
  State<ChipSample> createState() => _ChipSampleState();
}

enum ExerciseFilter { walking, running, cycling, hiking }

class _ChipSampleState extends State<ChipSample> {
  bool favorite = false;
  final List<String> _filters = <String>[];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Choose an execise', style: textTheme.labelLarge),
          const SizedBox(height: 5.0),
          Wrap(
            spacing: 5.0,
            children: ExerciseFilter.values.map((ExerciseFilter exercise) {
              return FilterChip(
                label: Text(exercise.name),
                selected: _filters.contains(exercise.name),
                onSelected: (bool value) {
                  setState(() {
                    if (value) {
                      if (!_filters.contains(exercise.name)) {
                        _filters.add(exercise.name);
                      }
                    } else {
                      _filters.removeWhere((String name) {
                        return name == exercise.name;
                      });
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10.0),
          Text('Looking for: ${_filters.join(', ')}')
        ],
      ),
    );

    // return Chip(
    //   // avatar: CircleAvatar(
    //   //   backgroundColor: Colors.grey.shade800,
    //   //   child: const Text('AB'),
    //   // ),
    //   label: const Text('Aaron Burr'),
    // );
  }
}
