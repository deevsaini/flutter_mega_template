/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/appointmentPage.dart';
import 'package:doctor_marketplace_app/pages/bookAppointmentPage.dart';
import 'package:doctor_marketplace_app/pages/chatPage.dart';
import 'package:doctor_marketplace_app/pages/doctorPage.dart';
import 'package:doctor_marketplace_app/pages/forgotPasswordPage.dart';
import 'package:doctor_marketplace_app/pages/homePage.dart';
import 'package:doctor_marketplace_app/pages/menuPage.dart';
import 'package:doctor_marketplace_app/pages/messagePage.dart';
import 'package:doctor_marketplace_app/pages/notificationPage.dart';
import 'package:doctor_marketplace_app/pages/profilePage.dart';
import 'package:doctor_marketplace_app/pages/registerPage.dart';
import 'package:doctor_marketplace_app/pages/searchPage.dart';
import 'package:doctor_marketplace_app/pages/selectAreaPage.dart';
import 'package:doctor_marketplace_app/pages/settingsPage.dart';
import 'package:doctor_marketplace_app/pages/signinPage.dart';
import 'package:doctor_marketplace_app/pages/specialistInfoPage.dart';
import 'package:doctor_marketplace_app/pages/tabBarPage.dart';
import 'package:doctor_marketplace_app/pages/videoCallingPage.dart';
import 'package:doctor_marketplace_app/pages/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const doctor_marketplace_app());
}

class doctor_marketplace_app extends StatelessWidget {
  const doctor_marketplace_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor 1',
      theme: ThemeData(
          fontFamily: 'regular',
          scaffoldBackgroundColor: const Color(0xFFE7EFFA)),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        tabBarPage.pageId: (context) => tabBarPage(),
        appointmentPage.pageId: (context) => appointmentPage(),
        bookAppointmentPage.pageId: (context) => tabBarPage(),
        chatPage.pageId: (context) => tabBarPage(),
        doctorPage.pageId: (context) => tabBarPage(),
        forgotPasswordPage.pageId: (context) => tabBarPage(),
        homePage.pageId: (context) => tabBarPage(),
        menuPage.pageId: (context) => tabBarPage(),
        messagePage.pageId: (context) => tabBarPage(),
        notificationPage.pageId: (context) => tabBarPage(),
        profilePage.pageId: (context) => tabBarPage(),
        registerPage.pageId: (context) => tabBarPage(),
        searchPage.pageId: (context) => tabBarPage(),
        selectAreaPage.pageId: (context) => tabBarPage(),
        settingsPage.pageId: (context) => tabBarPage(),
        signinPage.pageId: (context) => tabBarPage(),
        specialistInfoPage.pageId: (context) => tabBarPage(),
        videoCallingPage.pageId: (context) => tabBarPage(),

        // total pages = 19
      },
    );
  }
}
