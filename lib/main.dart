import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(FLearnApp());

class FLearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLearn App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: HomeScreen(title: 'FLearn'),
    );
  }
}
