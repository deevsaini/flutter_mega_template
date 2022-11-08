/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:admin_app/pages/addNewCategoriesPage.dart';
import 'package:admin_app/pages/addNewItemPage.dart';
import 'package:admin_app/pages/completePage.dart';
import 'package:admin_app/pages/deliveryAreasPage.dart';
import 'package:admin_app/pages/loginPage.dart';
import 'package:admin_app/pages/menuPage.dart';
import 'package:admin_app/pages/newOrderPage.dart';
import 'package:admin_app/pages/offerPage.dart';
import 'package:admin_app/pages/onGoingOrderPage.dart';
import 'package:admin_app/pages/orderPage.dart';
import 'package:admin_app/pages/profilePage.dart';
import 'package:admin_app/pages/settingsPage.dart';
import 'package:admin_app/pages/sideMenuPage.dart';
import 'package:admin_app/pages/specialMealPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const food_admin_fluttermarketplace());
}

class food_admin_fluttermarketplace extends StatelessWidget {
  const food_admin_fluttermarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Admin App',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: loginPage(),
      routes: {
        loginPage.pageId: (context) => loginPage(),
        orderPage.pageId: (context) => orderPage(),
        addNewCategoriesPage.pageId: (context) => addNewCategoriesPage(),
        addNewItemPage.pageId: (context) => addNewItemPage(),
        completePage.pageId: (context) => completePage(),
        deliveryAreasPage.pageId: (context) => deliveryAreasPage(),
        menuPage.pageId: (context) => menuPage(),
        newOrderPage.pageId: (context) => newOrderPage(),
        offerPage.pageId: (context) => offerPage(),
        onGoingOrderPage.pageId: (context) => onGoingOrderPage(),
        profilePage.pageId: (context) => profilePage(),
        settingsPage.pageId: (context) => settingsPage(),
        sideMenuPage.pageId: (context) => sideMenuPage(),
        specialMealPage.pageId: (context) => specialMealPage(),

        // total pages = 14
      },
    );
  }
}
