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
import 'package:shop1_flutter_marketplace_hardik/pages/cardPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/cartPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/chekoutPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/citySearchPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/editGiftCardPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/editGiftCardPage2.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/favoritePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/forgotPasswordPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/giftCardPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/homePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/loginPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/newinPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/noOrderPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/notificationPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/orderDetalisPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/orderPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/pricePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/producDetailsPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/profilePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/refinePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/registerPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/searchPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/searchProductPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/settingsPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/tabBarPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/userDetailsPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/videoPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const shop1_flutter_marketplace());
}

class shop1_flutter_marketplace extends StatelessWidget {
  const shop1_flutter_marketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop 1',
      theme: ThemeData(fontFamily: 'regular'),
      home: welcomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        loginPage.pageId: (context) => loginPage(),
        tabBarpage.pageId: (context) => tabBarpage(),
        registerPage.pageId: (context) => registerPage(),
        cardPage.pageId: (context) => cardPage(),
        cartPage.pageId: (context) => cartPage(),
        checkoutPage.pageId: (context) => checkoutPage(),
        citySearchPage.pageId: (context) => citySearchPage(),
        editGiftCardPage.pageId: (context) => editGiftCardPage(),
        editGiftCardPage2.pageId: (context) => editGiftCardPage2(),
        favoritePage.pageId: (context) => favoritePage(),
        forgotPasswordPage.pageId: (context) => forgotPasswordPage(),
        giftCardPage.pageId: (context) => giftCardPage(),
        homePage.pageId: (context) => homePage(),
        noOrderPage.pageId: (context) => noOrderPage(),
        orderDetailsPage.pageId: (context) => orderDetailsPage(),
        orderPage.pageId: (context) => orderPage(),
        pricePage.pageId: (context) => pricePage(),
        productDetailsPage.pageId: (context) => productDetailsPage(),
        profilePage.pageId: (context) => profilePage(),
        refinePage.pageId: (context) => refinePage(),
        searchPage.pageId: (context) => searchPage(),
        settingPage.pageId: (context) => settingPage(),
        userDetailsPage.pageId: (context) => userDetailsPage(),
        videoPage.pageId: (context) => videoPage(),
        notificationPage.pageId: (context) => notificationPage(),
        newinPage.pageId: (context) => newinPage(),
        searchProductPage.pageId: (context) => searchProductPage(),

        // total pages = 28
      },
    );
  }
}
