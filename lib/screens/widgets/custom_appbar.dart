import 'package:flutter/cupertino.dart';
import 'package:xwood/export.dart';

class CustomAppbar {
  static AppBar buildAppBar({
    required String title,
    bool autoImplyLead = true,
    action,
  }) => AppBar(
    title: Text(title),
    automaticallyImplyLeading: autoImplyLead,
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
