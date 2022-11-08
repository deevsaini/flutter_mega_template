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
import 'package:travelo/pages/addCardPage.dart';
import 'package:travelo/pages/addPassengerPage.dart';
import 'package:travelo/pages/appointmentPage.dart';
import 'package:travelo/pages/bookFlightPage.dart';
import 'package:travelo/pages/checkoutPage.dart';
import 'package:travelo/pages/fevoritePage.dart';
import 'package:travelo/pages/forgotPasswordPage.dart';
import 'package:travelo/pages/homePage.dart';
import 'package:travelo/pages/hotelBookingPage.dart';
import 'package:travelo/pages/hotelPage.dart';
import 'package:travelo/pages/infoPage.dart';
import 'package:travelo/pages/loginPage.dart';
import 'package:travelo/pages/profilePage.dart';
import 'package:travelo/pages/registerPage.dart';
import 'package:travelo/pages/reviewsPage.dart';
import 'package:travelo/pages/selectRoomPage.dart';
import 'package:travelo/pages/selectSeatPage.dart';
import 'package:travelo/pages/tabBarPage.dart';
import 'package:travelo/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const flightbooking_fluttermarketplace());
}

class flightbooking_fluttermarketplace extends StatelessWidget {
  const flightbooking_fluttermarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelo App',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        tabBarPage.pageId: (context) => tabBarPage(),
        addCardPage.pageId: (context) => addCardPage(),
        addPassengerPage.pageId: (context) => addPassengerPage(),
        appointmentPage.pageId: (context) => appointmentPage(),
        bookFlightPage.pageId: (context) => bookFlightPage(),
        checkoutPage.pageId: (context) => checkoutPage(),
        fevoritePage.pageId: (context) => fevoritePage(),
        forgotPasswordPage.pageId: (context) => forgotPasswordPage(),
        homePage.pageId: (context) => homePage(),
        hotelBookingPage.pageId: (context) => hotelBookingPage(),
        hotelPage.pageId: (context) => hotelPage(),
        infoPage.pageId: (context) => infoPage(),
        loginPage.pageId: (context) => loginPage(),
        profilePage.pageId: (context) => profilePage(),
        registerPage.pageId: (context) => registerPage(),
        reviewsPage.pageId: (context) => reviewsPage(),
        selectRoomPage.pageId: (context) => selectRoomPage(),
        selectSeatPage.pageId: (context) => selectSeatPage(),

        // total pages = 19
      },
    );
  }
}
