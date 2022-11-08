/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quize/helper/style.dart';
import 'package:quize/pages/addFriends.dart';
import 'package:quize/pages/chooseCategory.dart';
import 'package:quize/pages/home.dart';
import 'package:quize/pages/leaderboard.dart';
import 'package:quize/pages/login.dart';
import 'package:quize/pages/notification.dart';
import 'package:quize/pages/profile.dart';
import 'package:quize/pages/signup.dart';
import 'package:quize/pages/tabs.dart';
import 'package:quize/pages/withdraw.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Colors.black, // status bar color
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: login(),
      routes: {
        login.page_id: (context) => login(),
        signup.page_id: (context) => signup(),
        tabs.page_id: (context) => tabs(),
        home.page_id: (context) => home(),
        withdraw.page_id: (context) => withdraw(),
        leaderboard.page_id: (context) => leaderboard(),
        profile.page_id: (context) => profile(),
        addFriends.page_id: (context) => addFriends(),
        notification.page_id: (context) => notification(),
        chooseCategory.page_id: (context) => chooseCategory(),
      },
    );
  }
}
