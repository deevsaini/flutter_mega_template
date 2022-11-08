/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor/pages/basicInfoPage.dart';
import 'package:doctor/pages/callConsultPage.dart';
import 'package:doctor/pages/chatPage.dart';
import 'package:doctor/pages/consultHistoryPage.dart';
import 'package:doctor/pages/doctorPage.dart';
import 'package:doctor/pages/filter2Page.dart';
import 'package:doctor/pages/filterPage.dart';
import 'package:doctor/pages/forgotPasswordPage.dart';
import 'package:doctor/pages/freeConsultDetailsPage.dart';
import 'package:doctor/pages/freeConsultPage.dart';
import 'package:doctor/pages/homePage.dart';
import 'package:doctor/pages/informationPage.dart';
import 'package:doctor/pages/locationPage.dart';
import 'package:doctor/pages/loginPage.dart';
import 'package:doctor/pages/messageConsultPage.dart';
import 'package:doctor/pages/messagePage.dart';
import 'package:doctor/pages/notificationPage.dart';
import 'package:doctor/pages/onlineAppointmentPage.dart';
import 'package:doctor/pages/otherInfoPage.dart';
import 'package:doctor/pages/outgoingCallPage.dart';
import 'package:doctor/pages/profilePage.dart';
import 'package:doctor/pages/registerPage.dart';
import 'package:doctor/pages/reportCallPage.dart';
import 'package:doctor/pages/reportProblemPage.dart';
import 'package:doctor/pages/schedulePage.dart';
import 'package:doctor/pages/shareDoctorPage.dart';
import 'package:doctor/pages/shareMedicationPage.dart';
import 'package:doctor/pages/tabBarPage.dart';
import 'package:doctor/pages/videoCall2Page.dart';
import 'package:doctor/pages/videoCallPage.dart';
import 'package:doctor/pages/welcomePage.dart';
import 'package:doctor/pages/workProfilePage.dart';
import 'package:doctor/pages/writeAnswerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const doctor_plus_fluttermarketplace());
}

class doctor_plus_fluttermarketplace extends StatelessWidget {
  const doctor_plus_fluttermarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'doctor plus',
      theme: ThemeData(
          fontFamily: 'regular',
          scaffoldBackgroundColor: const Color(0xFFE7EFFA)),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        tabBarPage.pageId: (context) => tabBarPage(),
        basicInfoPage.pageId: (context) => tabBarPage(),
        callConsultPage.pageId: (context) => tabBarPage(),
        chatPage.pageId: (context) => tabBarPage(),
        consultHistoryPage.pageId: (context) => tabBarPage(),
        doctorPage.pageId: (context) => tabBarPage(),
        filterPage.pageId: (context) => tabBarPage(),
        filter2Page.pageId: (context) => tabBarPage(),
        forgotPasswordPage.pageId: (context) => tabBarPage(),
        freeConsultDetailsPage.pageId: (context) => tabBarPage(),
        freeConsultPage.pageId: (context) => tabBarPage(),
        homePage.pageId: (context) => tabBarPage(),
        informationPage.pageId: (context) => tabBarPage(),
        locationPage.pageId: (context) => tabBarPage(),
        loginPage.pageId: (context) => tabBarPage(),
        messageConsultPage.pageId: (context) => tabBarPage(),
        messagePage.pageId: (context) => tabBarPage(),
        notificationPage.pageId: (context) => tabBarPage(),
        onlineAppointmentPage.pageId: (context) => tabBarPage(),
        otherInfoPage.pageId: (context) => tabBarPage(),
        outgoingCallPage.pageId: (context) => tabBarPage(),
        profilePage.pageId: (context) => tabBarPage(),
        registerPage.pageId: (context) => tabBarPage(),
        reportCallPage.pageId: (context) => tabBarPage(),
        reportProblemPage.pageId: (context) => tabBarPage(),
        schedulePage.pageId: (context) => tabBarPage(),
        shareDoctorPage.pageId: (context) => tabBarPage(),
        shareMedicationPage.pageId: (context) => tabBarPage(),
        videoCall2Page.pageId: (context) => tabBarPage(),
        videoCallPage.pageId: (context) => tabBarPage(),
        workProfilePage.pageId: (context) => tabBarPage(),
        writeAnswerPage.pageId: (context) => tabBarPage(),

        // total pages = 33
      },
    );
  }
}
