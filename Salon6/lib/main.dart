/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart';
import 'package:salon/pages/CompleteSalonDetail.dart';
import 'package:salon/pages/appointment.dart';
import 'package:salon/pages/appointmentBookSuccess.dart';
import 'package:salon/pages/bookAndPay.dart';
import 'package:salon/pages/bookDateTime.dart';
import 'package:salon/pages/call.dart';
import 'package:salon/pages/changeProfile.dart';
import 'package:salon/pages/enterContactResetPass.dart';
import 'package:salon/pages/faqs.dart';
import 'package:salon/pages/forgotPasswod.dart';
import 'package:salon/pages/home.dart';
import 'package:salon/pages/location.dart';
import 'package:salon/pages/chatList.dart';
import 'package:salon/pages/message.dart';
import 'package:salon/pages/notification.dart';
import 'package:salon/pages/otp.dart';
import 'package:salon/pages/passresetsuccess.dart';
import 'package:salon/pages/paymentMethod.dart';
import 'package:salon/pages/phoneVerification.dart';
import 'package:salon/pages/profile.dart';
import 'package:salon/pages/salonSpecialist.dart';
import 'package:salon/pages/signIn.dart';
import 'package:salon/pages/signUp.dart';
import 'package:salon/pages/tabs.dart';
import 'package:flutter/services.dart';

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
      title: 'Salon Six',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: signIn(),
      debugShowCheckedModeBanner: false,
      routes: {
        signIn.page_id: (context) => signIn(),
        signUp.page_id: (context) => signUp(),
        phoneVerification.page_id: (context) => phoneVerification(),
        otpVerify.page_id: (context) => otpVerify(),
        forgotPassword.page_id: (context) => forgotPassword(),
        enterContact.page_id: (context) => enterContact(),
        passResetSuccess.page_id: (context) => passResetSuccess(),
        tabs.page_id: (context) => tabs(),
        home.page_id: (context) => home(),
        location.page_id: (context) => location(),
        appointment.page_id: (context) => appointment(),
        chatList.page_id: (context) => chatList(),
        profile.page_id: (context) => profile(),
        message.page_id: (context) => message(),
        changeProfile.page_id: (context) => changeProfile(),
        paymentMethod.page_id: (context) => paymentMethod(),
        FAQs.page_id: (context) => FAQs(),
        notification.page_id: (context) => notification(),
        completeSalonDetail.page_id: (context) => completeSalonDetail(),
        salonSpecialist.page_id: (context) => salonSpecialist(),
        callScreen.page_id: (context) => callScreen(),
        bookDateTime.page_id: (context) => bookDateTime(),
        bookAndPay.page_id: (context) => bookAndPay(),
        appointmentBookSuccess.page_id: (context) => appointmentBookSuccess(),
      },
    );
  }
}
