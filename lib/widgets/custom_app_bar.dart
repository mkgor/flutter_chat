import 'package:chat/themes/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar {
  PreferredSizeWidget getAppBar(bool showMenuButton) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: primaryPadding),
            child: Row(
              children: <Widget>[
                showMenuButton ? GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    color: appBarIconColor,
                  ),
                ) : Text(''),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: IconButton(
                    icon: Icon(Icons.person_outline, color: appBarIconColor),
                    iconSize: 30,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
