/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date/pages/friend_profile.dart';
import 'package:date/pages/suggest.dart';
import 'package:flutter/material.dart';
import 'package:date/pages/login.dart';
import 'package:date/pages/welcome.dart';
import 'package:date/pages/register.dart';
import 'package:date/pages/home.dart';
import 'package:date/pages/tabs.dart';
import 'package:date/pages/profile.dart';
import 'package:date/pages/likes.dart';
import 'package:date/pages/inbox.dart';
import 'package:date/pages/notification.dart';
import 'package:date/pages/Filter.dart';
import 'package:date/pages/Setting.dart';
import 'package:date/pages/editProfile.dart';
import 'package:date/pages/chat.dart';

void main() => runApp(DateApp());

class DateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Three',
      initialRoute: Welcome.id,
      debugShowCheckedModeBanner: false,
      routes: {
        Welcome.id: (context) => Welcome(),
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
        Home.id: (context) => Home(),
        TabsExample.id: (context) => TabsExample(),
        Profile.id: (context) => Profile(),
        Inbox.id: (context) => Inbox(),
        Likes.id: (context) => Likes(),
        Notifications.id: (context) => Notifications(),
        Filter.id: (context) => Filter(),
        Setting.id: (context) => Setting(),
        EditProfile.id: (context) => EditProfile(),
        Chat.id: (context) => Chat(),
        Suggest.id: (context) => Suggest(),
        FriendProfile.id: (context) => FriendProfile(),
      },
    );
  }
}
