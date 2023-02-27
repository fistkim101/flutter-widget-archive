import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ScaffoldSample extends StatelessWidget {
  const ScaffoldSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
      ),
      appBar: AppBar(
        // backgroundColor: Colors.red,
        // foregroundColor: Colors.red,
        // automaticallyImplyLeading: false,
        // default = true
        centerTitle: true,
        // leading: Icon(Icons.circle_notifications),
        title: Text('Title'),
        actions: [
          GestureDetector(
            onTap: () {
              print('first action');
            },
            child: Icon(Icons.star),
          ),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      ),
      body: TextButtonSample(),
      // floatingActionButton: Text('floatingActionButton'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
