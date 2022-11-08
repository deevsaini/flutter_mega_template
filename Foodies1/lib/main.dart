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
import 'package:food1_flutter_marketplace/pages/NearByPage.dart';
import 'package:food1_flutter_marketplace/pages/cartPage.dart';
import 'package:food1_flutter_marketplace/pages/checkoutPage.dart';
import 'package:food1_flutter_marketplace/pages/editProfilePage.dart';
import 'package:food1_flutter_marketplace/pages/favoritePage.dart';
import 'package:food1_flutter_marketplace/pages/filterPage.dart';
import 'package:food1_flutter_marketplace/pages/forgotPasswordPage.dart';
import 'package:food1_flutter_marketplace/pages/historyPage.dart';
import 'package:food1_flutter_marketplace/pages/homePage.dart';
import 'package:food1_flutter_marketplace/pages/loginPage.dart';
import 'package:food1_flutter_marketplace/pages/orderDetailsPage.dart';
import 'package:food1_flutter_marketplace/pages/orderPage.dart';
import 'package:food1_flutter_marketplace/pages/paymentDetailPage.dart';
import 'package:food1_flutter_marketplace/pages/productsDetailsPage.dart';
import 'package:food1_flutter_marketplace/pages/productsPage.dart';
import 'package:food1_flutter_marketplace/pages/profilePage.dart';
import 'package:food1_flutter_marketplace/pages/registerPage.dart';
import 'package:food1_flutter_marketplace/pages/sideMenuPage.dart';
import 'package:food1_flutter_marketplace/pages/successPage.dart';
import 'package:food1_flutter_marketplace/pages/tabsBarPage.dart';
import 'package:food1_flutter_marketplace/pages/thankYouPage.dart';
import 'package:food1_flutter_marketplace/pages/trackDeliveryPage.dart';
import 'package:food1_flutter_marketplace/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const food1_flutter_marketplace());
}

class food1_flutter_marketplace extends StatelessWidget {
  const food1_flutter_marketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salon 1',
      theme: ThemeData(fontFamily: 'regular'),
      home: welcomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        registerPage.pageId: (context) => registerPage(),
        forgotPasswordPage.pageId: (context) => forgotPasswordPage(),
        tabsBarpage.pageId: (context) => tabsBarpage(),
        homePage.pageId: (context) => homePage(),
        loginPage.pageId: (context) => loginPage(),
        nearByPage.pageId: (context) => nearByPage(),
        profilePage.pageId: (context) => profilePage(),
        cartPage.pageId: (context) => cartPage(),
        orderDetailsPage.pageId: (context) => orderDetailsPage(),
        orderPage.pageId: (context) => orderPage(),
        paymentDetailPage.pageId: (context) => paymentDetailPage(),
        productsPage.pageId: (context) => productsPage(),
        successPage.pageId: (context) => successPage(),
        checkoutPage.pageId: (context) => checkoutPage(),
        sidemenuPage.pageId: (context) => sidemenuPage(),
        trackDeliveryPage.pageId: (context) => trackDeliveryPage(),
        editProfilePage.pageId: (context) => editProfilePage(),
        favoritePage.pageId: (context) => favoritePage(),
        historyPage.pageId: (context) => historyPage(),
        productsDetailsPage.pageId: (context) => productsDetailsPage(),
        filterPage.pageId: (context) => filterPage(),
        thankYouPage.pageId: (context) => thankYouPage(),

        // Total Pages = 23
      },
    );
  }
}
