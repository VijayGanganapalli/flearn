import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
      onTap: () {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Button clicked')));
      },
    );
  }
}
