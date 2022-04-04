import 'dart:math';
import 'welcome_page.dart';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: welcome_page(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light());
  }
}
