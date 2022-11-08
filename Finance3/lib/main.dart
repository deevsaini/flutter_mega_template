/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance3_fluttermarketplace/pages/accountPage.dart';
import 'package:finance3_fluttermarketplace/pages/cashInPage.dart';
import 'package:finance3_fluttermarketplace/pages/codeScanPage.dart';
import 'package:finance3_fluttermarketplace/pages/confirmTransactionPage.dart';
import 'package:finance3_fluttermarketplace/pages/foodPage.dart';
import 'package:finance3_fluttermarketplace/pages/forgotPasswordPage.dart';
import 'package:finance3_fluttermarketplace/pages/homePage.dart';
import 'package:finance3_fluttermarketplace/pages/loginPage.dart';
import 'package:finance3_fluttermarketplace/pages/newTransactionPage.dart';
import 'package:finance3_fluttermarketplace/pages/notificationPage.dart';
import 'package:finance3_fluttermarketplace/pages/paymentCounterPage.dart';
import 'package:finance3_fluttermarketplace/pages/paymentPage.dart';
import 'package:finance3_fluttermarketplace/pages/promotionPage.dart';
import 'package:finance3_fluttermarketplace/pages/registerPage.dart';
import 'package:finance3_fluttermarketplace/pages/reportPage.dart';
import 'package:finance3_fluttermarketplace/pages/selectCategoriesPage.dart';
import 'package:finance3_fluttermarketplace/pages/successPaymentPage.dart';
import 'package:finance3_fluttermarketplace/pages/tabBarPage.dart';
import 'package:finance3_fluttermarketplace/pages/walletPage.dart';
import 'package:finance3_fluttermarketplace/pages/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const finance3_fluttermarketplace());
}

class finance3_fluttermarketplace extends StatelessWidget {
  const finance3_fluttermarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance 3',
      theme: ThemeData(fontFamily: 'regular'),
      home: welcomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        loginPage.pageId: (context) => loginPage(),
        registerPage.pageId: (context) => registerPage(),
        forgotPasswordPage.pageId: (context) => forgotPasswordPage(),
        tabBarPage.pageId: (context) => tabBarPage(),
        homePage.pageId: (context) => homePage(),
        accountPage.pageId: (context) => accountPage(),
        walletPage.pageId: (context) => walletPage(),
        reportPage.pageId: (context) => reportPage(),
        notificationPage.pageId: (context) => notificationPage(),
        cashInPage.pageId: (context) => cashInPage(),
        codeScanPage.pageId: (context) => codeScanPage(),
        confirmTransactionPage.pageId: (context) => confirmTransactionPage(),
        foodPage.pageId: (context) => foodPage(),
        newTransactionPage.pageId: (context) => newTransactionPage(),
        paymentPage.pageId: (context) => paymentPage(),
        selectCategorisPage.pageId: (context) => selectCategorisPage(),
        successPaymentPage.pageId: (context) => successPaymentPage(),
        prmotionPage.pageId: (context) => prmotionPage(),
        paymentCounterPage.pageId: (context) => paymentCounterPage(),

        // total pages = 20
      },
    );
  }
}
