/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/aboutInstructor.dart';
import 'package:elearn/pages/accCreateSuccess.dart';
import 'package:elearn/pages/account.dart';
import 'package:elearn/pages/categories.dart';
import 'package:elearn/pages/forgotPassword.dart';
import 'package:elearn/pages/home.dart';
import 'package:elearn/pages/logIn.dart';
import 'package:elearn/pages/myCourse.dart';
import 'package:elearn/pages/orderSuccess.dart';
import 'package:elearn/pages/payment.dart';
import 'package:elearn/pages/register.dart';
import 'package:elearn/pages/slider.dart';
import 'package:elearn/pages/tabs.dart';
import 'package:elearn/pages/topCourses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'E-Learning',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        logIn.page_id: (context) => logIn(),
        register.page_id: (context) => register(),
        accCreateSuccess.page_id: (context) => accCreateSuccess(),
        forgotPassword.page_id: (context) => forgotPassword(),
        tabs.page_id: (context) => tabs(),
        home.page_id: (context) => home(),
        categories.page_id: (context) => categories(),
        myCourse.page_id: (context) => myCourse(),
        account.page_id: (context) => account(),
        topCourses.page_id: (context) => topCourses(),
        aboutInstructer.page_id: (context) => aboutInstructer(),
        payment.page_id: (context) => payment(),
        orderSuccess.page_id: (context) => orderSuccess(),
      },
    );
  }
}
