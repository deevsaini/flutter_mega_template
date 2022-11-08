/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/live_tv.dart';
import 'package:social_network/pages/welcome.dart';
import '../components/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Network 2',
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
        LiveTV.id: (context) => const LiveTV(),
      },
    );
  }
}
