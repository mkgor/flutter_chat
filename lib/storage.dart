import 'package:chat/models/chat_dialog.dart';
import 'package:chat/models/message.dart';
import 'package:flutter/material.dart';

import 'models/user.dart';

class Storage {
  static List<User> users = [
    User(
      id: 0,
      name: "Андрей",
      avatar: Image.asset('assets/images/andrey.jpg')
    ),
    User(
      id: 1,
      name: "Борис",
      avatar: Image.asset('assets/images/boris.jpg')
    ),
    User(
      id: 2,
      name: "Дмитрий",
      avatar: Image.asset('assets/images/dmitry.jpg')
    ),
    User(
      id: 3,
      name: "Елена",
      avatar: Image.asset('assets/images/elena.jpg')
    ),
    User(
      id: 4,
      name: "Роман",
      avatar: Image.asset('assets/images/roman.jpg')
    )
  ];

  static List<ChatDialog> dialogs = [
      ChatDialog(user: users[1], messages: [

        Message(
          sender: users[1],
          receiver: users[0],
          text: "Как продвигается работа?",
          date: DateTime.parse('2020-07-20 15:43')
        ),
        Message(
            sender: users[0],
            receiver: users[1],
            text: "Начал делать сайт, как закончу - напишу Вам!",
            date: DateTime.parse('2020-07-10 11:23')
        ),
      ]),
      ChatDialog(user: users[2], messages: [
        Message(
            sender: users[2],
            receiver: users[0],
            text: "Во сколько сегодня освободишься?",
            date: DateTime.parse('2020-07-20 16:43')
        )
      ]),
      ChatDialog(user: users[3], messages: [
        Message(
            sender: users[3],
            receiver: users[0],
            text: "Вы сейчас не заняты? Нам нужен сайт",
            date: DateTime.parse('2020-07-20 17:54')
        )
      ]),
      ChatDialog(user: users[4], messages: [
        Message(
            sender: users[4],
            receiver: users[0],
            text: "Отличная работа, спасибо вам большое!",
            date: DateTime.parse('2020-07-21 12:17')
        )
      ]),
  ];
}
