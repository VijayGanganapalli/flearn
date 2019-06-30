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
      body: DismissableDemo(),
    );
  }
}

class DismissableDemo extends StatefulWidget {
  @override
  _DismissableDemoState createState() => _DismissableDemoState();
}

class _DismissableDemoState extends State<DismissableDemo> {
  final items = List<String>.generate(12, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("$item dismissed"),
            ));
          },
          background: Container(color: Colors.red),
          child: ListTile(
            title: Text('$item'),
          ),
        );
      },
    );
  }
}
