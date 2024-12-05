import 'package:flutter/cupertino.dart';
import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/export.dart';

class CustomAppbar {

  static AppBar appbarName({required title,
    bool autoImplyLead = true,})=> AppBar(
    title: Text(title),
    automaticallyImplyLeading: autoImplyLead,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      fontSize: 16,
      color: AppColorConst.kGrey400,
    ),
  );

  static AppBar buildAppBar({
    required String title,
    bool autoImplyLead = true,
    action,
  }) => AppBar(
    title: Text(title),
    automaticallyImplyLeading: autoImplyLead,
    backgroundColor: Colors.transparent,
    actions: [searchButton(), favoriteButton(), notificationButton(), action],
  );

  static IconButton searchButton() {
    return IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search));
  }

  static IconButton favoriteButton() {
    return IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart));
  }

  static IconButton notificationButton() {
    return IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell));
  }
}
