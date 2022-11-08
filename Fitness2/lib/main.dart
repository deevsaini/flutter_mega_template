/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/tabBarPage.dart';
import 'package:fitness_app/pages/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const fitnessApp2_fluttermarketplace());
}

class fitnessApp2_fluttermarketplace extends StatelessWidget {
  const fitnessApp2_fluttermarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness 2',
      theme: ThemeData(
          fontFamily: 'regular',
          scaffoldBackgroundColor: const Color(0xFF1D1F2B)),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        tabBarPage.pageId: (context) => tabBarPage(),
      },
    );
  }
}
