import 'package:chat/models/user.dart';
import 'package:chat/themes/main.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  List<User> users = [];

  Favorites({this.users});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10, left: 23, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Избранное",
                style: TextStyle(
                    color: primaryColor,
                    fontFamily: 'Atomic Alice',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              IconButton(icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Row(
                  children: List.generate(users.length, (index) {
                User user = users[index];

                return Container(
                  margin: EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: index == users.length - 1 ? 20 : 0),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        child: SizedBox(width: 70, child: user.avatar),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      SizedBox(height: 10),
                      Text(
                        user.name,
                        style: TextStyle(
                            color: favoritesNameColor,
                            fontFamily: mainFont,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )
                    ],
                  ),
                );
              }))
            ],
          ),
        )
      ],
    );
  }
}
