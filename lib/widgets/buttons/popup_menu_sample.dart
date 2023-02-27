import 'package:flutter/material.dart';

import '../../enums/enums.dart';

class PopupMenuSample extends StatefulWidget {
  const PopupMenuSample({Key? key}) : super(key: key);

  @override
  State<PopupMenuSample> createState() => _PopupMenuSampleState();
}

class _PopupMenuSampleState extends State<PopupMenuSample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
          // child: Text('child'),
          icon: Icon(Icons.star),
          // enabled: false,
          onCanceled: () {
            print('onCanceled');
          },
          onSelected: (PopupMenus popupMenus) {
            print('onSelected >>> ${popupMenus.toString()}');
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupMenus>>[
                const PopupMenuItem<PopupMenus>(
                  value: PopupMenus.first,
                  child: Text('Item 1'),
                ),
                const PopupMenuItem<PopupMenus>(
                  value: PopupMenus.second,
                  child: Text('Item 2'),
                ),
                const PopupMenuItem<PopupMenus>(
                  value: PopupMenus.third,
                  child: Text('Item 3'),
                ),
              ]),
    );
  }
}
