import 'package:chat/models/user.dart';

class Message {
  User sender;
  User receiver;
  String text;
  DateTime date;
  bool isRead;

  Message({this.sender, this.receiver, this.text, this.date, this.isRead});
}
