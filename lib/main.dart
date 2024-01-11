import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'inputs.dart';

void main() => runApp(BmiCalc());

class BmiCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      // home: InputPage(),
      home: splash(),
    );
  }
}

