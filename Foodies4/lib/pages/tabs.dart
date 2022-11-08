/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/home.dart';
import 'package:fooddoor/pages/myAddress.dart';
import 'package:fooddoor/pages/myOrder.dart';
import 'package:fooddoor/pages/mySaved.dart';
import 'package:fooddoor/pages/nearMe.dart';
import 'package:fooddoor/pages/profile.dart';

class tabs extends StatefulWidget {
  tabs({Key? key}) : super(key: key);

  static const String page_id = "Tabs";

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          labelColor: style.appColor,
          unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          labelStyle: TextStyle(
            fontFamily: 'regular',
            fontSize: 16,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                color: _currentIndex == 0
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation_outlined,
                color: _currentIndex == 1
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: _currentIndex == 2
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.bookmark_outline,
                color: _currentIndex == 3
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_outline,
                color: _currentIndex == 4
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            homeScreen(),
            nearMe(),
            myOrder(),
            mySaved(),
            profile(),
          ],
        ),
      ),
    );
  }
}
