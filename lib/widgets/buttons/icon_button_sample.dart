import 'package:flutter/material.dart';

class IconButtonSample extends StatefulWidget {
  const IconButtonSample({Key? key}) : super(key: key);

  @override
  State<IconButtonSample> createState() => _IconButtonSampleState();
}

class _IconButtonSampleState extends State<IconButtonSample> {
  int _currentVolume = 0;
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: const ShapeDecoration(
              color: Colors.green,
              shape: CircleBorder(),
            ),
            // decoration: const BoxDecoration(
            //   shape: BoxShape.circle,
            //   color: Colors.green,
            // ),
            child: IconButton(
              icon: const Icon(Icons.android),
              color: Colors.white,
              // onPressed: () {},
              onPressed: null,
            ),
          ),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.green,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.android),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          Theme(
            data: ThemeData(useMaterial3: true),
            child: IconButton(
              isSelected: _isSelected,
              iconSize: 50,
              // onPressed: null,
              onPressed: () {
                setState(() {
                  _currentVolume += 10;
                  _isSelected = !_isSelected;
                  print('current isSelected : $_isSelected');
                });
              },
              tooltip: 'tooltip',
              icon: const Icon(
                Icons.volume_up,
                color: Colors.blue,
              ),
              selectedIcon: const Icon(
                Icons.star,
                color: Colors.red,
              ),
            ),
          ),
          Text('Volume : $_currentVolume'),
        ],
      ),
    );
  }
}
