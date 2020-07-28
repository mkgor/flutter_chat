import 'package:chat/models/user.dart';

import 'message.dart';

class ChatDialog {
  User user;
  List<Message> messages;

  ChatDialog({this.user, this.messages});

  Message getLastMessage() {
    return messages.last;
  }
}
