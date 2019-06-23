import 'package:flutter/material.dart';

class DisplaySnackBar extends StatelessWidget {
  final String appBarTitle;

  const DisplaySnackBar({Key key, this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: SnackBarDialog(),
    );
  }
}

class SnackBarDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show Snackbar'),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yah!, Snackbar'),
            action: SnackBarAction(
              label: 'UNDO',
              onPressed: () {},
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
