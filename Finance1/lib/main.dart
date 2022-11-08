/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance1/pages/confirmation.dart';
import 'package:finance1/pages/profile.dart';
import 'package:finance1/pages/services.dart';
import 'package:finance1/pages/transfer_from_card.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart';
import 'package:finance1/pages/add%20_card.dart';
import 'package:finance1/pages/cards.dart';
import 'package:finance1/pages/history.dart';
import 'package:finance1/pages/home.dart';
import 'package:finance1/pages/login.dart';
import 'package:finance1/pages/operation.dart';
import 'package:finance1/pages/registration.dart';
import 'package:finance1/pages/tabs.dart';
import 'package:finance1/pages/verification.dart';
import 'package:finance1/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "regular",
          primaryColor: appColor,
          backgroundColor: appColor

          // brightness: Brightness.light,
          ),
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Login.id: (context) => const Login(),
        Registration.id: (context) => const Registration(),
        Verification.id: (context) => const Verification(),
        AddCard.id: (context) => const AddCard(),
        Home.id: (context) => const Home(),
        History.id: (context) => const History(),
        Cards.id: (context) => const Cards(),
        Services.id: (context) => const Services(),
        TransferFromCard.id: (context) => const TransferFromCard(),
        Confirmation.id: (context) => const Confirmation(),
        Operation.id: (context) => const Operation(),
        Profile.id: (context) => const Profile(),
        TabsExample.id: (context) => const TabsExample(),
      },
    );
  }
}
