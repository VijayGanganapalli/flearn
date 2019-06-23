import 'package:flutter/material.dart';
import 'package:flearn/screens/design/orientation_list.dart';

void main() => runApp(FLearnApp());

class FLearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLearn App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: OrientationList(appBarTitle: 'Orientation Demo'),
    );
  }
}
