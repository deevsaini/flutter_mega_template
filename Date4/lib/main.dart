/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date5/pages/friend_profile.dart';
import 'package:date5/pages/myprofile.dart';
import 'package:date5/pages/verification.dart';
import 'package:flutter/material.dart';
import 'package:date5/pages/login.dart';
import 'package:date5/pages/welcome.dart';
import 'package:date5/pages/home.dart';
import 'package:date5/pages/tabs.dart';
import 'package:date5/pages/profile.dart';
import 'package:date5/pages/likes.dart';
import 'package:date5/pages/inbox.dart';
import 'package:date5/pages/notification.dart';
import 'package:date5/pages/Filter.dart';
import 'package:date5/pages/Setting.dart';
import 'package:date5/pages/editProfile.dart';
import 'package:date5/pages/chat.dart';
import 'package:flutter/services.dart';
import '../components/styles.dart' as style;

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const DateApp());
}

class DateApp extends StatelessWidget {
  const DateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "regular",
        primaryColor: style.appColor,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      initialRoute: Welcome.id,
      debugShowCheckedModeBanner: false,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Login.id: (context) => const Login(),
        Home.id: (context) => const Home(),
        TabsExample.id: (context) => const TabsExample(),
        Profile.id: (context) => const Profile(),
        Inbox.id: (context) => const Inbox(),
        Likes.id: (context) => const Likes(),
        Notifications.id: (context) => const Notifications(),
        Filter.id: (context) => const Filter(),
        Setting.id: (context) => const Setting(),
        EditProfile.id: (context) => const EditProfile(),
        Chat.id: (context) => const Chat(),
        FriendProfile.id: (context) => const FriendProfile(),
        Verification.id: (context) => const Verification(),
        MyProfile.id: (context) => const MyProfile(),
      },
    );
  }
}
