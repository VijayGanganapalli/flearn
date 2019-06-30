import 'package:flearn/screens/lists/utility/list_item.dart';

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}
