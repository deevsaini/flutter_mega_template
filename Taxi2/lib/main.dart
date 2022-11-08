/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/components/styles.dart';
import 'package:taxi/pages/home.dart';
import 'package:taxi/pages/login.dart';
import 'package:taxi/pages/payment.dart';
import 'package:taxi/pages/ride_detail.dart';
import 'package:taxi/pages/ride_find.dart';
import 'package:taxi/pages/ride_ongoing.dart';
import 'package:taxi/pages/ride_request.dart';
import 'package:taxi/pages/ride_select.dart';
import 'package:taxi/pages/tabs.dart';
import 'package:taxi/pages/terms.dart';
import 'package:taxi/pages/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "regular",
          primaryColor: appColor,
          backgroundColor: appColor
          // brightness: Brightness.light,
          ),
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => const Login(),
        Verification.id: (context) => const Verification(),
        Terms.id: (context) => const Terms(),
        Home.id: (context) => const Home(),
        RideDetails.id: (context) => const RideDetails(),
        RideRequest.id: (context) => const RideRequest(),
        RideFind.id: (context) => const RideFind(),
        RideSelect.id: (context) => const RideSelect(),
        RideOngoing.id: (context) => const RideOngoing(),
        Payment.id: (context) => const Payment(),
        TabsExample.id: (context) => const TabsExample(),
      },
    );
  }
}
