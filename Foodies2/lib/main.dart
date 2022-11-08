/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/pages/confirm.dart';
import 'package:food2/pages/item_detail.dart';
import 'package:food2/pages/location.dart';
import 'package:food2/pages/login.dart';
import 'package:food2/pages/notification.dart';
import 'package:food2/pages/order_status.dart';
import 'package:food2/pages/profile.dart';
import 'package:food2/pages/rating.dart';
import 'package:food2/pages/register.dart';
import 'package:food2/pages/restaurant_detail.dart';
import 'package:food2/pages/search.dart';
import 'package:food2/pages/tabs.dart';
import 'package:food2/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "regular",
        // brightness: Brightness.dark,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Login.id: (context) => const Login(),
        Register.id: (context) => const Register(),
        Location.id: (context) => const Location(),
        TabsExample.id: (context) => const TabsExample(),
        Search.id: (context) => const Search(),
        RestaurantDetail.id: (context) => const RestaurantDetail(),
        ItemDetail.id: (context) => const ItemDetail(),
        Confirm.id: (context) => const Confirm(),
        OrderStatus.id: (context) => const OrderStatus(),
        Profile.id: (context) => const Profile(),
        Notificasions.id: (context) => const Notificasions(),
        Rate.id: (context) => const Rate(),
      },
    );
  }
}
