import 'package:flutter/material.dart';
import 'package:flutter_animations_/animationcontainer.dart';
import 'package:flutter_animations_/fadetransmission.dart';
import 'package:flutter_animations_/scaletransition.dart';
import 'package:flutter_animations_/slidetransition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaletransitionExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
