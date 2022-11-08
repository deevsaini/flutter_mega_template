/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/booking.dart';
import 'package:saloon5/pages/confirmation.dart';
import 'package:saloon5/pages/home.dart';
import 'package:saloon5/pages/profile.dart';
import 'package:saloon5/pages/service.dart';
import 'package:saloon5/pages/success.dart';
import 'package:saloon5/pages/tabs.dart';
import 'package:saloon5/pages/welcome.dart';
import 'package:saloon5/pages/login.dart';
import 'package:saloon5/pages/verification.dart';
import 'package:saloon5/pages/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        Verification.id: (context) => const Verification(),
        Location.id: (context) => const Location(),
        Home.id: (context) => const Home(),
        Service.id: (context) => const Service(),
        Booking.id: (context) => const Booking(),
        Confirmation.id: (context) => const Confirmation(),
        Profile.id: (context) => const Profile(),
        TabsExample.id: (context) => const TabsExample(),
        Success.id: (context) => const Success(),
      },
    );
  }
}
