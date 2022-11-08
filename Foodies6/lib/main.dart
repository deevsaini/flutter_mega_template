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
import 'package:foodies_fluttermarketplace_hardik/pages/addressPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/bookChef2Page.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/bookChefPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/callPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/chatPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/chefSelectionPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/directionsPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/discoverPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/faceIdPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/faqAndHelpPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/favoritePage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/filterPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/forgotPasswordPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/itemCategoriesPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/itemPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/loginAndSignupPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/loginPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/messagePage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/notificationsPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/ordersDetailsPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/ordersPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/paymentHistoryPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/paymentsDetailsPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/paymentsMethod.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/productsPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/profilePage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/registerPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/settingPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/splashScreenPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/tabBarPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/touchIdPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/trackOrderPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const foodies_fluttermarketplace_hardik());
}

class foodies_fluttermarketplace_hardik extends StatelessWidget {
  const foodies_fluttermarketplace_hardik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodies 5',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: splashScreenPage(),
      routes: {
        splashScreenPage.pageId: (context) => splashScreenPage(),
        welcomePage.pageId: (context) => welcomePage(),
        chefSelectionPage.pageId: (context) => chefSelectionPage(),
        addressPage.pageId: (context) => chefSelectionPage(),
        bookChef2Page.pageId: (context) => chefSelectionPage(),
        bookChefPage.pageId: (context) => chefSelectionPage(),
        callPage.pageId: (context) => chefSelectionPage(),
        chatPage.pageId: (context) => chefSelectionPage(),
        directionsPage.pageId: (context) => chefSelectionPage(),
        discoverPage.pageId: (context) => chefSelectionPage(),
        faceIdPage.pageId: (context) => chefSelectionPage(),
        faqAndHelpPage.pageId: (context) => chefSelectionPage(),
        favoritePage.pageId: (context) => chefSelectionPage(),
        filterPage.pageId: (context) => chefSelectionPage(),
        forgotPasswordPage.pageId: (context) => chefSelectionPage(),
        itemCategoriesPage.pageId: (context) => chefSelectionPage(),
        itemPage.pageId: (context) => chefSelectionPage(),
        loginAndSignupPage.pageId: (context) => chefSelectionPage(),
        loginPage.pageId: (context) => chefSelectionPage(),
        messagePage.pageId: (context) => chefSelectionPage(),
        notificationsPage.pageId: (context) => chefSelectionPage(),
        ordersDetailsPage.pageId: (context) => chefSelectionPage(),
        ordersPage.pageId: (context) => chefSelectionPage(),
        paymentHistoryPage.pageId: (context) => chefSelectionPage(),
        paymentsDetailsPage.pageId: (context) => chefSelectionPage(),
        paymentsMethod.pageId: (context) => chefSelectionPage(),
        productsPage.pageId: (context) => chefSelectionPage(),
        profilePage.pageId: (context) => chefSelectionPage(),
        registerPage.pageId: (context) => chefSelectionPage(),
        settingPage.pageId: (context) => chefSelectionPage(),
        tabBarPage.pageId: (context) => chefSelectionPage(),
        touchIdPage.pageId: (context) => chefSelectionPage(),
        trackOrderPage.pageId: (context) => chefSelectionPage(),

        // total pages = 33
      },
    );
  }
}
