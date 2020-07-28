import 'package:chat/themes/main.dart';
import 'package:flutter/material.dart';

class TabSelector extends StatelessWidget {
  List<Map<String, dynamic>> tabs = [
    {'title': "Сообщения"},
    {'title': "Контакты"},
    {'title': "Группы"},
  ];

  int selectedTabIndex;

  TabSelector(this.selectedTabIndex);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: List.generate(tabs.length, (index) {
              return Container(
                margin: EdgeInsets.only(left: primaryPadding),
                child: Text(tabs[index]['title'],
                    style: selectedTabIndex == index
                        ? tabStyleActive
                        : tabStyleMuted),
              );
            }),
          ),
        ],
      ),
    );
  }
}
