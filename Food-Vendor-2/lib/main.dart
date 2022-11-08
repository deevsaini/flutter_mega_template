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
import 'package:zomato/helper/style.dart';
import 'package:zomato/pages/account.dart';
import 'package:zomato/pages/allTickets.dart';
import 'package:zomato/pages/categories.dart';
import 'package:zomato/pages/contactDetails.dart';
import 'package:zomato/pages/customerComplaints.dart';
import 'package:zomato/pages/filter.dart';
import 'package:zomato/pages/foodStatus.dart';
import 'package:zomato/pages/foods.dart';
import 'package:zomato/pages/insights.dart';
import 'package:zomato/pages/login.dart';
import 'package:zomato/pages/manageFoods.dart';
import 'package:zomato/pages/menu.dart';
import 'package:zomato/pages/orderDetails.dart';
import 'package:zomato/pages/orderHistory.dart';
import 'package:zomato/pages/orders.dart';
import 'package:zomato/pages/otpVerify.dart';
import 'package:zomato/pages/outletTiming.dart';
import 'package:zomato/pages/rejectedOrders.dart';
import 'package:zomato/pages/sideMenu.dart';
import 'package:zomato/pages/tabs.dart';
import 'package:zomato/pages/totalSales.dart';
import 'package:zomato/pages/updateTimings.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      title: 'Zomato Admin 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: login(),
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
        const Locale('es'),
        const Locale('el'),
        const Locale('et'),
        const Locale('nb'),
        const Locale('nn'),
        const Locale('pl'),
        const Locale('pt'),
        const Locale('ru'),
        const Locale('hi'),
        const Locale('ne'),
        const Locale('uk'),
        const Locale('hr'),
        const Locale('tr'),
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routes: {
        login.page_id: (context) => login(),
        tabs.page_id: (context) => tabs(),
        orders.page_id: (context) => orders(),
        menu.page_id: (context) => menu(),
        insights.page_id: (context) => insights(),
        account.page_id: (context) => account(),
        totalSales.page_id: (context) => totalSales(),
        rejectedOrders.page_id: (context) => rejectedOrders(),
        sideMenu.page_id: (context) => sideMenu(),
        contactDetails.page_id: (context) => contactDetails(),
        categories.page_id: (context) => categories(),
        customerComplaints.page_id: (context) => customerComplaints(),
        foods.page_id: (context) => foods(),
        manageFoods.page_id: (context) => manageFoods(),
        allTickets.page_id: (context) => allTickets(),
        orderHistory.page_id: (context) => orderHistory(),
        filter.page_id: (context) => filter(),
        updateTimings.page_id: (context) => updateTimings(),
        outletTiming.page_id: (context) => outletTiming(),
        foodStatus.page_id: (context) => foodStatus(),
        otpVerify.page_id: (context) => otpVerify(),
        orderDetails.page_id: (context) => orderDetails()
      },
    );
  }
}
