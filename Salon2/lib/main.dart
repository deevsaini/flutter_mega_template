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
import 'package:salon2/pages/booking.dart';
import 'package:salon2/pages/home.dart';
import 'package:salon2/pages/login.dart';
import 'package:salon2/pages/mens.dart';
import 'package:salon2/pages/payment.dart';
import 'package:salon2/pages/pick-stylist.dart';
import 'package:salon2/pages/service-location.dart';
import 'package:salon2/pages/slot.dart';
import 'package:salon2/pages/stylist-info.dart';
import 'package:salon2/pages/tabs.dart';
import 'package:salon2/pages/verification.dart';
import 'package:salon2/pages/welcome.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "regular",
        // primaryColor: style.appColor,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Login.id: (context) => const Login(),
        Home.id: (context) => const Home(),
        Slot.id: (context) => const Slot(),
        Category.id: (context) => const Category(),
        PickStylist.id: (context) => const PickStylist(),
        Booking.id: (context) => const Booking(),
        TabsExample.id: (context) => const TabsExample(),
        TabsExample.id: (context) => const TabsExample(),
        Verification.id: (context) => const Verification(),
        ServiceLocation.id: (context) => const ServiceLocation(),
        Payment.id: (context) => const Payment(),
        StylistInfo.id: (context) => const StylistInfo(),
      },
    );
  }
}
