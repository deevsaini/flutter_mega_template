/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/pages/cartPage.dart';
import 'package:food1_flutter_marketplace/pages/homePage.dart';
import 'package:food1_flutter_marketplace/pages/loginPage.dart';
import 'package:food1_flutter_marketplace/pages/nearByPage.dart';
import 'package:food1_flutter_marketplace/pages/orderPage.dart';
import 'package:food1_flutter_marketplace/pages/paymentDetailPage.dart';
import 'package:food1_flutter_marketplace/pages/tabsBarPage.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class sidemenuPage extends StatefulWidget {
  sidemenuPage({Key? key}) : super(key: key);

  static const String pageId = 'sidemenuPage';

  @override
  State<sidemenuPage> createState() => _sidemenuPageState();
}

class _sidemenuPageState extends State<sidemenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        height: 50,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFF9E25),
            Color(0xFFFF7F30),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Menu',
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              child: Wrap(
                children: [
                  Text(
                    'Hey',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'bold', fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 180,
              child: Wrap(
                children: [
                  Text(
                    'Ami Nagar !',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontFamily: 'bold', fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tabsBarpage()));
                },
                child: _buildContent(Icons.home, 'Home'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tabsBarpage()));
                },
                child: _buildContent(Icons.location_on, 'Nearby'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tabsBarpage()));
                },
                child: _buildContent(Icons.shopping_cart, 'My Cart'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => paymentDetailPage()));
                },
                child: _buildContent(Icons.money, 'Payment Details'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => orderPage()));
                },
                child: _buildContent(Icons.shopping_bag, 'My Orders'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: _buildContent(Icons.notifications, 'Notifications'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: _buildContent(Icons.inbox, 'Inbox'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: _buildContent(Icons.help, 'About us !'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginPage()));
                },
                child: _buildContent(Icons.logout, 'Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(icn, txt) {
    return Row(
      children: [
        Icon(
          icn,
          color: style.appColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '$txt',
          style: TextStyle(color: Colors.black, fontFamily: 'bold'),
        ),
      ],
    );
  }
}
