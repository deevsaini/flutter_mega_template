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
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/accounCreateSuccess.dart';
import 'package:realestate/pages/agentDetail.dart';
import 'package:realestate/pages/bookDateTime.dart';
import 'package:realestate/pages/booking.dart';
import 'package:realestate/pages/bookingStatus.dart';
import 'package:realestate/pages/callScreen.dart';
import 'package:realestate/pages/categories.dart';
import 'package:realestate/pages/favAgent.dart';
import 'package:realestate/pages/filter.dart';
import 'package:realestate/pages/forgotPassword.dart';
import 'package:realestate/pages/home.dart';
import 'package:realestate/pages/houseDetail.dart';
import 'package:realestate/pages/message.dart';
import 'package:realestate/pages/messanger.dart';
import 'package:realestate/pages/myBookings.dart';
import 'package:realestate/pages/notification.dart';
import 'package:realestate/pages/ownerProfile.dart';
import 'package:realestate/pages/payment.dart';
import 'package:realestate/pages/profile.dart';
import 'package:realestate/pages/search.dart';
import 'package:realestate/pages/searchAgent.dart';
import 'package:realestate/pages/selectLocation.dart';
import 'package:realestate/pages/setting.dart';
import 'package:realestate/pages/signin.dart';
import 'package:realestate/pages/signup.dart';
import 'package:realestate/pages/slider.dart';
import 'package:realestate/pages/videoCall.dart';

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
      title: 'RealEstate',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        signin.page_id: (context) => signin(),
        signup.page_id: (context) => signup(),
        accountCreateSuccess.page_id: (context) => accountCreateSuccess(),
        forgotPassword.page_id: (context) => forgotPassword(),
        home.page_id: (context) => home(),
        profile.page_id: (context) => profile(),
        setting.page_id: (context) => setting(),
        houseDetail.page_id: (context) => houseDetail(),
        notification.page_id: (context) => notification(),
        search.page_id: (context) => search(),
        filter.page_id: (context) => filter(),
        callScreen.page_id: (context) => callScreen(),
        message.page_id: (context) => message(),
        videoCall.page_id: (context) => videoCall(),
        booking.page_id: (context) => booking(),
        payment.page_id: (context) => payment(),
        bookdateTime.page_id: (context) => bookdateTime(),
        agentDetail.page_id: (context) => agentDetail(),
        ownerProfile.page_id: (context) => ownerProfile(),
        myBookings.page_id: (context) => myBookings(),
        bookingStatus.page_id: (context) => bookingStatus(),
        myBookings.page_id: (context) => myBookings(),
        favAgent.page_id: (context) => favAgent(),
        searchAgent.page_id: (context) => searchAgent(),
        messanger.page_id: (context) => messanger(),
        categories.page_id: (context) => categories(),
        selectLocation.page_id: (context) => selectLocation(),
      },
    );
  }
}
