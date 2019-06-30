import 'package:flearn/screens/lists/utility/heading_item.dart';
import 'package:flearn/screens/lists/utility/message_item.dart';
import 'package:flutter/material.dart';
import 'package:flearn/screens/lists/utility/list_item.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  final List<ListItem> items;

  const HomeScreen({Key key, this.title, @required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is MessageItem) {
            return ListTile(
              title: Text(item.sender),
              subtitle: Text(item.body),
            );
          }
        },
      ),
    );
  }
}
