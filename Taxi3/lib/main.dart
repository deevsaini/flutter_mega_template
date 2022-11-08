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
import 'package:ride/helper/style.dart';
import 'package:ride/pages/chat.dart';
import 'package:ride/pages/chooseCar.dart';
import 'package:ride/pages/driverContact.dart';
import 'package:ride/pages/driverInformation.dart';
import 'package:ride/pages/home.dart';
import 'package:ride/pages/inputPromo.dart';
import 'package:ride/pages/invitefriends.dart';
import 'package:ride/pages/notification.dart';
import 'package:ride/pages/payment.dart';
import 'package:ride/pages/setLocation.dart';
import 'package:ride/pages/setting.dart';
import 'package:ride/pages/signIn.dart';
import 'package:ride/pages/signUp.dart';
import 'package:ride/pages/slider.dart';
import 'package:ride/pages/verification.dart';

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
      title: 'Taxi Booking',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        setLocation.page_id: (context) => setLocation(),
        signIn.page_id: (context) => signIn(),
        signUp.page_id: (context) => signUp(),
        verification.page_id: (context) => verification(),
        home.page_id: (context) => home(),
        setting.page_id: (context) => setting(),
        notification.page_id: (context) => notification(),
        inviteFriends.page_id: (context) => inviteFriends(),
        payment.page_id: (context) => payment(),
        chooseCar.page_id: (context) => chooseCar(),
        inputPromo.page_id: (context) => inputPromo(),
        driverInformation.page_id: (context) => driverInformation(),
        driverContact.page_id: (context) => driverContact(),
        chat.page_id: (context) => chat(),
      },
    );
  }
}
