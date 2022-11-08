/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:medical/helper/style.dart';
import 'package:medical/pages/appointment.dart';
import 'package:medical/pages/completeDoctorInfo.dart';
import 'package:medical/pages/doctorContact.dart';
import 'package:medical/pages/eventAndNews.dart';
import 'package:medical/pages/eventDetails.dart';
import 'package:medical/pages/homeScreen.dart';
import 'package:flutter/services.dart';
import 'package:medical/pages/signIn.dart';
import 'package:medical/pages/slider.dart';
import 'package:medical/pages/upcomingAppointments.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        homeScreen.page_id: (context) => homeScreen(),
        signIn.page_id: (context) => signIn(),
        upcomingAppointment.page_id: (context) => upcomingAppointment(),
        doctorContact.page_id: (context) => doctorContact(),
        completeDoctorInfo.page_id: (context) => completeDoctorInfo(),
        appointment.page_id: (context) => appointment(),
        eventAndNews.page_id: (context) => eventAndNews(),
        eventDetails.page_id: (context) => eventDetails(),
      },
    );
  }
}
