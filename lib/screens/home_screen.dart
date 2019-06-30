import 'package:flutter/material.dart';
import 'package:flearn/screens/images/images_from_internet.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ImagesFromInternet(),
    );
  }
}
