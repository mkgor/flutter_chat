import 'package:chat/models/user.dart';
import 'package:chat/storage.dart';
import 'package:chat/themes/main.dart';
import 'package:chat/widgets/custom_app_bar.dart';
import 'package:chat/widgets/dialogs_list.dart';
import 'package:chat/widgets/favorites.dart';
import 'package:chat/widgets/message_box.dart';
import 'package:chat/widgets/tab_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar().getAppBar(true),
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.search), backgroundColor: primaryColor, onPressed: () {},),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            TabSelector(0),
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        color: favoritesContainerBackgroundColor),
                    width: double.infinity,
                    height: 250,
                    child: Favorites(users: Storage.users),
                    ),
                Container(
                    margin: EdgeInsets.only(top: 230),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        color: Colors.white),
                    width: double.infinity,
                    height: size.height * 0.44397,
                    child: DialogsList(dialogs: Storage.dialogs,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
