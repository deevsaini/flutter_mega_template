/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/components/styles.dart';
import 'package:shop2/pages/Contact.dart';
import 'package:shop2/pages/Item_detail.dart';
import 'package:shop2/pages/add_address.dart';
import 'package:shop2/pages/blog.dart';
import 'package:shop2/pages/blog_info.dart';
import 'package:shop2/pages/cart.dart';
import 'package:shop2/pages/checkout.dart';
import 'package:shop2/pages/collection.dart';
import 'package:shop2/pages/home.dart';
import 'package:shop2/pages/payment_method.dart';
import 'package:shop2/pages/product.dart';
import 'package:shop2/pages/story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "regular",
          primaryColor: appColor,
          backgroundColor: appColor

          // brightness: Brightness.light,
          ),
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => const Home(),
        AddAddress.id: (context) => const AddAddress(),
        BlogInfo.id: (context) => const BlogInfo(),
        Blog.id: (context) => const Blog(),
        Cart.id: (context) => const Cart(),
        Checkout.id: (context) => const Checkout(),
        Collection.id: (context) => const Collection(),
        Contact.id: (context) => const Contact(),
        ItemDetail.id: (context) => const ItemDetail(),
        PaymentMethod.id: (context) => const PaymentMethod(),
        Product.id: (context) => const Product(),
        Story.id: (context) => const Story(),
      },
    );
  }
}
