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
import 'package:slon3/Pages/artistDetailsPage.dart';
import 'package:slon3/Pages/artistProfilePage.dart';
import 'package:slon3/Pages/artistWorkPage.dart';
import 'package:slon3/Pages/bookingPage.dart';
import 'package:slon3/Pages/followingPage.dart';
import 'package:slon3/Pages/forgotPassword.dart';
import 'package:slon3/Pages/homePage.dart';
import 'package:slon3/Pages/loginPage.dart';
import 'package:slon3/Pages/selectServicesPage.dart';
import 'package:slon3/Pages/sideMenuPage.dart';
import 'package:slon3/Pages/signupPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const salon3AppCapacitor());
}

class salon3AppCapacitor extends StatelessWidget {
  const salon3AppCapacitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salon Three',
      theme: ThemeData(fontFamily: 'regular'),
      home: loginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        loginPage.pageId: (context) => loginPage(),
        forgotPasswordPage.pageId: (context) => forgotPasswordPage(),
        signupPage.pageId: (context) => signupPage(),
        homePage.pageId: (context) => homePage(),
        artistDetailsPage.pageId: (context) => artistDetailsPage(),
        artistProfilePage.pageId: (context) => artistProfilePage(),
        selectServicesPage.pageId: (context) => selectServicesPage(),
        followingPage.pageId: (context) => followingPage(),
        artistWorkPage.pageId: (context) => artistWorkPage(),
        sideMenuPage.pageId: (context) => sideMenuPage(),
        bookinPage.pageId: (context) => bookinPage(),
      },
    );
  }
}
