import 'package:chat/models/message.dart';
import 'package:chat/themes/main.dart';
import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';

class MessageBubble extends StatelessWidget {
  Message message;
  bool isMe;

  MessageBubble({this.message, this.isMe});

  @override
  Widget build(BuildContext context) {
    Widget myMessage = Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(messageBubblePadding),
                  child: Text(
                    message.text,
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: TinyColor(primaryColor).lighten(20).color,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("${message.date.hour}:${message.date.minute}", style: TextStyle(
              color: favoritesNameColor
            ))
          ],
        ));

    Widget receivedMessage = Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(messageBubblePadding),
                  child: Text(
                    message.text,
                    style: TextStyle(color: TinyColor(receivedMessageTextColor).darken(30).color),
                  ),
                  decoration: BoxDecoration(
                    color: receivedMessageColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text("${message.date.hour}:${message.date.minute}", style: TextStyle(
                color: favoritesNameColor
            ))
          ],
        ));

    return isMe ? myMessage : receivedMessage;
  }
}
