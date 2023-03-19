import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Catalog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.green,
      ),
      // home: HomeScreen(),
      home: ProgressSample(),
    );
  }
}
