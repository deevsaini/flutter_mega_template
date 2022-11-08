/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:newsalonflutter/pages/about.dart';
import 'package:newsalonflutter/pages/bookAppointment.dart';
import 'package:newsalonflutter/pages/featured.dart';
import 'package:newsalonflutter/pages/gallery.dart';
import 'package:newsalonflutter/pages/login.dart';
import 'package:newsalonflutter/pages/more.dart';
import 'package:newsalonflutter/pages/offers.dart';
import 'package:newsalonflutter/pages/products.dart';
import 'package:newsalonflutter/pages/register.dart';
import 'package:newsalonflutter/pages/reviews.dart';
import 'package:newsalonflutter/pages/serviceList.dart';
import 'package:newsalonflutter/pages/services.dart';
import 'package:newsalonflutter/pages/tabs.dart';
import 'package:newsalonflutter/pages/welcome.dart';
import './helper/style.dart' as style;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salon 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: style.appColor, fontFamily: 'regular'),
      home: WelcomeScreen(),
      routes: {
        AboutScreen.page_id: (context) => AboutScreen(),
        BookAppointmentScreen.page_id: (context) => BookAppointmentScreen(),
        FeaturedScreen.page_id: (context) => FeaturedScreen(),
        GalleryScreen.page_id: (context) => GalleryScreen(),
        LoginScreen.page_id: (context) => LoginScreen(),
        MoreScreen.page_id: (context) => MoreScreen(),
        OffersScreen.page_id: (context) => OffersScreen(),
        ProductsScreen.page_id: (context) => ProductsScreen(),
        RegisterScreen.page_id: (context) => RegisterScreen(),
        ReviewsScreen.page_id: (context) => ReviewsScreen(),
        ServicesScreen.page_id: (context) => ServicesScreen(),
        ServiceListScreen.page_id: (context) => ServiceListScreen(),
        TabsExample.page_id: (context) => TabsExample(),
        WelcomeScreen.page_id: (context) => WelcomeScreen(),
      },
    );
  }
}
