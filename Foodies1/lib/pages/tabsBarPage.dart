/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/pages/NearByPage.dart';
import 'package:food1_flutter_marketplace/pages/cartPage.dart';
import 'package:food1_flutter_marketplace/pages/homePage.dart';
import 'package:food1_flutter_marketplace/pages/profilePage.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class tabsBarpage extends StatefulWidget {
  tabsBarpage({Key? key}) : super(key: key);

  static const String pageId = 'tabsBarpage';

  @override
  State<tabsBarpage> createState() => _tabsBarpageState();
}

class _tabsBarpageState extends State<tabsBarpage> {
  int _currentIndex = 0;
  var radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.black87,
          child: (TabBar(
            labelColor: style.appColor,
            unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.symmetric(horizontal: 0),
            labelStyle: TextStyle(
              fontFamily: 'regular',
              fontSize: 12,
            ),
            onTap: (int index) => setState(() => _currentIndex = index),
            tabs: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      Icons.home,
                      color: _currentIndex == 0
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 0 ? 30 : 20,
                    ),
                    text: 'Home'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      Icons.location_on,
                      color: _currentIndex == 1
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 1 ? 30 : 20,
                    ),
                    text: 'NearBy'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: _currentIndex == 2
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 2 ? 30 : 20,
                    ),
                    text: 'Cart'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      Icons.person,
                      color: _currentIndex == 3
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 3 ? 30 : 20,
                    ),
                    text: 'Profile'),
              ),
            ],
          )),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            homePage(),
            nearByPage(),
            cartPage(),
            profilePage(),
          ],
        ),
      ),
    );
  }
}
