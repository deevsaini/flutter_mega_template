/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shopping/helper/style.dart';
import 'package:shopping/pages/account.dart';
import 'package:shopping/pages/address.dart';
import 'package:shopping/pages/allCategory.dart';
import 'package:shopping/pages/allItems.dart';
import 'package:shopping/pages/cart.dart';
import 'package:shopping/pages/confirmOrder.dart';
import 'package:shopping/pages/filter.dart';
import 'package:shopping/pages/homeScreen.dart';
import 'package:shopping/pages/login.dart';
import 'package:shopping/pages/orderList.dart';
import 'package:shopping/pages/payment.dart';
import 'package:shopping/pages/productDetails.dart';
import 'package:shopping/pages/register.dart';
import 'package:shopping/pages/success.dart';
import 'package:shopping/pages/trackOrder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping 4',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: logIn(),
      routes: {
        logIn.page_id: (context) => logIn(),
        homeScreen.page_id: (context) => homeScreen(),
        allItems.page_id: (context) => allItems(),
        productDetails.page_id: (context) => productDetails(),
        cart.page_id: (context) => cart(),
        address.page_id: (context) => address(),
        payment.page_id: (context) => payment(),
        confirmOrder.page_id: (context) => confirmOrder(),
        success.page_id: (context) => success(),
        trackOrder.page_id: (context) => trackOrder(),
        allCategories.page_id: (context) => allCategories(),
        orderList.page_id: (context) => orderList(),
        filter.page_id: (context) => filter(),
        account.page_id: (context) => account(),
        register.page_id: (context) => register(),
      },
    );
  }
}
