import 'package:chat/models/chat_dialog.dart';
import 'package:chat/models/message.dart';
import 'package:chat/themes/main.dart';
import 'package:chat/widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatDialog dialog;

  ChatScreen({this.dialog});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: primaryPadding - 10),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                          child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.arrow_back,
                              color: appBarIconColor,
                            )),
                      )),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: SizedBox(
                                  width: 50, child: dialog.user.avatar)),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              dialog.user.name,
                              style: TextStyle(
                                  color: appBarIconColor,
                                  fontSize: 16,
                                  fontFamily: 'Atomic Alice',
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 0, right: 10),
                        child: IconButton(
                          icon: Icon(Icons.more_horiz, color: appBarIconColor),
                          iconSize: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: ListView(
                        reverse: true,
                        children:
                            List.generate(dialog.messages.length, (index) {
                          return MessageBubble(
                              message: dialog.messages[index],
                              isMe: dialog.messages[index].sender.id == 0);
                        }),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(244,243,248,1)
            ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none, hintText: 'Введите сообщение...'),
                          ),
                        )),
                    Icon(
                      Icons.send,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
