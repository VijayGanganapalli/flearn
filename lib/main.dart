import 'package:flutter/material.dart';
import 'package:flearn/screens/forms/FormValidation.dart';

void main() => runApp(FLearnApp());

class FLearnApp extends StatelessWidget {
  final String appBarTitle;

  const FLearnApp({Key key, this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLearn App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation'),
        ),
        body: FormValidation(),
      ),
    );
  }
}
