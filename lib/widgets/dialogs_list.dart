import 'package:chat/models/chat_dialog.dart';
import 'package:chat/models/message.dart';
import 'package:chat/screens/chat_screen.dart';
import 'package:chat/widgets/message_box.dart';
import 'package:flutter/material.dart';

class DialogsList extends StatelessWidget {
  List<ChatDialog> dialogs = [];

  DialogsList({this.dialogs});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(dialogs.length, (index) {
        ChatDialog currentDialog = dialogs[index];
        Message lastMessage = dialogs[index].getLastMessage();

        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => ChatScreen(
                dialog: currentDialog
              )
            ));
          },
          child: Container(
            margin: EdgeInsets.only(bottom: (dialogs.length - 1 == index) ? 20 : 0),
            child: MessageBox(
              user: currentDialog.user,
              text: lastMessage.text,
              date: '${lastMessage.date.hour}:${lastMessage.date.minute}',
            )
          ),
        );
      }),
    );
  }
}
