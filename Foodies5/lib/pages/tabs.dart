/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/helper/style.dart' as style;
import 'package:food2/pages/account.dart';
import 'package:food2/pages/history.dart';
import 'package:food2/pages/homeScreen.dart';
import 'package:food2/pages/orders.dart';

class tabs extends StatefulWidget {
  tabs({Key? key}) : super(key: key);

  static const String page_id = 'Tabs';

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          labelStyle: TextStyle(
            fontFamily: 'regular',
            fontSize: 12,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                color: _currentIndex == 0
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: _currentIndex == 1
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Orders',
            ),
            Tab(
              icon: Icon(
                Icons.access_time_outlined,
                color: _currentIndex == 2
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'History',
            ),
            Tab(
              icon: Icon(
                Icons.person_outline,
                color: _currentIndex == 3
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Account',
            ),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            homeScreen(),
            orders(),
            history(),
            account(),
          ],
        ),
      ),
    );
  }
}
