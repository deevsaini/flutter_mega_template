/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/answers.dart';
import 'package:elearn/pages/exam.dart';
import 'package:elearn/pages/friends.dart';
import 'package:elearn/pages/history.dart';
import 'package:elearn/pages/home.dart';
import 'package:elearn/pages/leaderboard.dart';
import 'package:elearn/pages/otpInput.dart';
import 'package:elearn/pages/pinVerify.dart';
import 'package:elearn/pages/practice.dart';
import 'package:elearn/pages/profile.dart';
import 'package:elearn/pages/review.dart';
import 'package:elearn/pages/signin.dart';
import 'package:elearn/pages/signup.dart';
import 'package:elearn/pages/tabs.dart';
import 'package:elearn/pages/transaction.dart';
import 'package:elearn/pages/verification.dart';
import 'package:elearn/pages/verifyFingerprint.dart';
import 'package:elearn/pages/welcome.dart';
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
      title: 'My Exam',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: welcome(),
      routes: {
        welcome.page_id: (context) => welcome(),
        signin.page_id: (context) => signin(),
        signup.page_id: (context) => signup(),
        verification.page_id: (context) => verification(),
        otpInput.page_id: (context) => otpInput(),
        tabs.page_id: (context) => tabs(),
        home.page_id: (context) => home(),
        leaderboard.page_id: (context) => leaderboard(),
        history.page_id: (context) => history(),
        profile.page_id: (context) => profile(),
        practice.page_id: (context) => practice(),
        exam.page_id: (context) => exam(),
        review.page_id: (context) => review(),
        answers.page_id: (context) => answers(),
        transaction.page_id: (context) => transaction(),
        pinVerify.page_id: (context) => pinVerify(),
        verifyFingerprint.page_id: (context) => verifyFingerprint(),
        friends.page_id: (context) => friends(),
      },
    );
  }
}
