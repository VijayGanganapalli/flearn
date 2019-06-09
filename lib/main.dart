import 'package:flutter/material.dart';
import 'package:flearn/screens/animated/animated_container_app.dart';

void main() => runApp(FLearnApp());

class FLearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLearn App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: AnimatedContainerApp(appBarTitle: 'AnimatedContainer Demo'),
    );
  }
}
