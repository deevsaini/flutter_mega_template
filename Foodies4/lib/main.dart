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
import 'package:fooddoor/pages/addItems.dart';
import 'package:fooddoor/pages/addPaymentMethod.dart';
import 'package:fooddoor/pages/applyFilter.dart';
import 'package:fooddoor/pages/checkout.dart';
import 'package:fooddoor/pages/filter.dart';
import 'package:fooddoor/pages/forgotPassword.dart';
import 'package:fooddoor/pages/home.dart';
import 'package:fooddoor/pages/manageProfile.dart';
import 'package:fooddoor/pages/myAddress.dart';
import 'package:fooddoor/pages/myCards.dart';
import 'package:fooddoor/pages/myCart.dart';
import 'package:fooddoor/pages/myOrder.dart';
import 'package:fooddoor/pages/mySaved.dart';
import 'package:fooddoor/pages/nearMe.dart';
import 'package:fooddoor/pages/orderTracking.dart';
import 'package:fooddoor/pages/profile.dart';
import 'package:fooddoor/pages/search.dart';
import 'package:fooddoor/pages/shopYouSelect.dart';
import 'package:fooddoor/pages/signIn.dart';
import 'package:fooddoor/pages/signUp.dart';
import 'package:fooddoor/pages/slider.dart';
import 'package:fooddoor/helper/style.dart';
import 'package:fooddoor/pages/tabs.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodDoor',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      debugShowCheckedModeBanner: false,
      routes: {
        slider.page_id: (context) => slider(),
        signIn.page_id: (context) => signIn(),
        signUp.page_id: (context) => signUp(),
        forgotPassword.page_id: (context) => forgotPassword(),
        tabs.page_id: (context) => tabs(),
        homeScreen.page_id: (context) => homeScreen(),
        myAddress.page_id: (context) => myAddress(),
        myOrder.page_id: (context) => myOrder(),
        mySaved.page_id: (context) => mySaved(),
        profile.page_id: (context) => profile(),
        search.page_id: (context) => search(),
        filter.page_id: (context) => filter(),
        shopYouSelect.page_id: (context) => shopYouSelect(),
        addItems.page_id: (context) => addItems(),
        myCart.page_id: (context) => myCart(),
        checkout.page_id: (context) => checkout(),
        addPaymentMethod.page_id: (context) => addPaymentMethod(),
        myCards.page_id: (context) => myCards(),
        manageProfile.page_id: (context) => manageProfile(),
        applyFilter.page_id: (context) => applyFilter(),
        nearMe.page_id: (context) => nearMe(),
        orderTracking.page_id: (context) => orderTracking(),
      },
    );
  }
}
