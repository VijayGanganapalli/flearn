import 'package:flearn/screens/lists/utility/message_item.dart';
import 'package:flutter/material.dart';
import 'package:flearn/screens/home_screen.dart';
import 'package:flearn/screens/lists/utility/list_item.dart';
import 'package:flearn/screens/lists/utility/heading_item.dart';

void main() => runApp(FLearnApp());

class FLearnApp extends StatelessWidget {
  final String appBarTitle;

  const FLearnApp({Key key, this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLearn App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: HomeScreen(
        title: 'Lists Demo',
        items: List<ListItem>.generate(
          100,
          (i) => i % 10 == 0
              ? HeadingItem("Heading $i")
              : MessageItem("Sender $i", "Message body $i"),
        ),
      ),
    );
  }
}
