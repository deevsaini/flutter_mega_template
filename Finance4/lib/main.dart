/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:banky/helper/style.dart';
import 'package:banky/pages/account.dart';
import 'package:banky/pages/addNew.dart';
import 'package:banky/pages/addTransaction.dart';
import 'package:banky/pages/creditCard.dart';
import 'package:banky/pages/expenceSuccess.dart';
import 'package:banky/pages/home.dart';
import 'package:banky/pages/login.dart';
import 'package:banky/pages/onBoard.dart';
import 'package:banky/pages/qrCode.dart';
import 'package:banky/pages/review.dart';
import 'package:banky/pages/sendMoney.dart';
import 'package:banky/pages/statistics.dart';
import 'package:banky/pages/success.dart';
import 'package:banky/pages/tabs.dart';
import 'package:flutter/material.dart';
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
      title: 'Banky',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: login(),
      routes: {
        onBoard.page_id: (context) => onBoard(),
        login.page_id: (context) => login(),
        tabs.page_id: (context) => tabs(),
        home.page_id: (context) => home(),
        statistics.page_id: (context) => statistics(),
        addNew.page_id: (context) => addNew(),
        creditCard.page_id: (context) => creditCard(),
        account.page_id: (context) => account(),
        qrCode.page_id: (context) => qrCode(),
        sendMoney.page_id: (context) => sendMoney(),
        review.page_id: (context) => review(),
        success.page_id: (context) => success(),
        addTransaction.page_id: (context) => addTransaction(),
        expenseSuccess.page_id: (context) => expenseSuccess(),
      },
    );
  }
}
