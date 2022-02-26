import 'package:flutter/material.dart';
import 'package:flutter_drawer/animated_drawer.dart';

import 'package:flutter_drawer/elastic_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedDraw(),
    );
  }
}
