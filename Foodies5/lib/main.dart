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
import 'package:food2/helper/style.dart';
import 'package:food2/pages/account.dart';
import 'package:food2/pages/addCard.dart';
import 'package:food2/pages/addPaymentMethod.dart';
import 'package:food2/pages/chooseFood.dart';
import 'package:food2/pages/getStart.dart';
import 'package:food2/pages/history.dart';
import 'package:food2/pages/homeScreen.dart';
import 'package:food2/pages/latestDeals.dart';
import 'package:food2/pages/login.dart';
import 'package:food2/pages/navigation.dart';
import 'package:food2/pages/notifications.dart';
import 'package:food2/pages/orderDetails.dart';
import 'package:food2/pages/orderReceipt.dart';
import 'package:food2/pages/orderSuccess.dart';
import 'package:food2/pages/orders.dart';
import 'package:food2/pages/paymentMethod.dart';
import 'package:food2/pages/register.dart';
import 'package:food2/pages/restaurantDetail.dart';
import 'package:food2/pages/search.dart';
import 'package:food2/pages/selectDeliveryLocation.dart';
import 'package:food2/pages/slider.dart';
import 'package:food2/pages/tabs.dart';
import 'package:food2/pages/trackOrder.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        getStartScreen.page_id: (context) => getStartScreen(),
        login.page_id: (context) => login(),
        register.page_id: (context) => register(),
        tabs.page_id: (context) => tabs(),
        homeScreen.page_id: (context) => homeScreen(),
        orders.page_id: (context) => orders(),
        history.page_id: (context) => history(),
        account.page_id: (context) => account(),
        search.page_id: (context) => search(),
        restaurantDetails.page_id: (context) => restaurantDetails(),
        chooseFood.page_id: (context) => chooseFood(),
        orderDetails.page_id: (context) => orderDetails(),
        paymentPayment.page_id: (context) => paymentPayment(),
        addPaymentMethod.page_id: (context) => addPaymentMethod(),
        addCard.page_id: (context) => addCard(),
        notification.page_id: (context) => notification(),
        orderSuccess.page_id: (context) => orderSuccess(),
        trackOrder.page_id: (context) => trackOrder(),
        orderReciept.page_id: (context) => orderReciept(),
        selectDeliveryAddress.page_id: (context) => selectDeliveryAddress(),
        latestDeals.page_id: (context) => latestDeals(),
        navigation.page_id: (context) => navigation(),
      },
    );
  }
}
