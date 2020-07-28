import 'package:chat/models/user.dart';
import 'package:chat/themes/main.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  User user;
  String text;
  String date;

  MessageBox({this.user, this.text, this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left:20, right: 20, top: 20),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: SizedBox(
                        width: 60,
                        child: user.avatar)),
                Container(
                  margin: EdgeInsets.only(left: 18.0),
                  child: SizedBox(
                    height: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(user.name,
                            style: TextStyle(
                                color: primaryColor,
                                fontFamily: 'Atomic Alice',
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),

                        SizedBox(
                          width: 240,
                          child: Text(text, overflow: TextOverflow.ellipsis, style: TextStyle(
                              color: favoritesNameColor,

                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ],),


              SizedBox(
                height: 55,
                child: Column(children: <Widget>[
                  Text(date, style: TextStyle(
                      color: favoritesNameColor
                  ),)
                ],),
              )
            ],
          ),
        ));
  }
}
