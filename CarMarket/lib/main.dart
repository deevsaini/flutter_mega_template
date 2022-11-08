/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/accountCreateSuccess.dart';
import 'package:car/pages/activities.dart';
import 'package:car/pages/addCarDetails.dart';
import 'package:car/pages/addNewCar.dart';
import 'package:car/pages/carDetails.dart';
import 'package:car/pages/carsCompare.dart';
import 'package:car/pages/chat.dart';
import 'package:car/pages/comparision.dart';
import 'package:car/pages/editInfo.dart';
import 'package:car/pages/forgotPassword.dart';
import 'package:car/pages/inbox.dart';
import 'package:car/pages/login.dart';
import 'package:car/pages/loginSuccess.dart';
import 'package:car/pages/market.dart';
import 'package:car/pages/myCars.dart';
import 'package:car/pages/notification.dart';
import 'package:car/pages/offerChat.dart';
import 'package:car/pages/profile.dart';
import 'package:car/pages/review.dart';
import 'package:car/pages/savedCars.dart';
import 'package:car/pages/search.dart';
import 'package:car/pages/setting.dart';
import 'package:car/pages/signup.dart';
import 'package:car/pages/slider.dart';
import 'package:car/pages/tabs.dart';
import 'package:car/pages/verification.dart';
import 'package:car/pages/welcome.dart';
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
      title: 'Car Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        welcome.page_id: (context) => welcome(),
        login.page_id: (context) => login(),
        signup.page_id: (context) => signup(),
        forgotPassword.page_id: (context) => forgotPassword(),
        loginSuccess.page_id: (context) => loginSuccess(),
        accountCreateSuccess.page_id: (context) => accountCreateSuccess(),
        tabs.page_id: (context) => tabs(),
        market.page_id: (context) => market(),
        inbox.page_id: (context) => inbox(),
        notification.page_id: (context) => notification(),
        myCars.page_id: (context) => myCars(),
        profile.page_id: (context) => profile(),
        verification.page_id: (context) => verification(),
        review.page_id: (context) => review(),
        addNewCar.page_id: (context) => addNewCar(),
        addCarDetails.page_id: (context) => addCarDetails(),
        search.page_id: (context) => search(),
        chat.page_id: (context) => chat(),
        offerChat.page_id: (context) => offerChat(),
        carsCompare.page_id: (context) => carsCompare(),
        savedCars.page_id: (context) => savedCars(),
        editInfo.page_id: (context) => editInfo(),
        comparision.page_id: (context) => comparision(),
        setting.page_id: (context) => setting(),
        carDetails.page_id: (context) => carDetails(),
        activities.page_id: (context) => activities(),
      },
    );
  }
}
