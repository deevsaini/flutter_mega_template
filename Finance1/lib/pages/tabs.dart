/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance1/pages/cards.dart';
import 'package:finance1/pages/history.dart';
import 'package:finance1/pages/home.dart';
import 'package:finance1/pages/operation.dart';
import 'package:finance1/pages/profile.dart';
import 'package:finance1/pages/services.dart';
import 'package:flutter/material.dart';

import '../components/styles.dart' as style;

class TabsExample extends StatefulWidget {
  const TabsExample({Key? key}) : super(key: key);
  static const String id = 'Tabs';

  @override
  _TabsExampleState createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          labelColor: style.appColor2,
          unselectedLabelColor: const Color.fromARGB(255, 185, 196, 207),
          indicatorColor: Colors.transparent,
          labelPadding: const EdgeInsets.symmetric(horizontal: 0),
          labelStyle: const TextStyle(
            fontFamily: 'regular',
            fontSize: 12,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(Icons.account_balance_wallet,
                  color: _currentIndex == 0
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.grid_view_rounded,
                  color: _currentIndex == 1
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.pie_chart,
                  color: _currentIndex == 2
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.access_time_filled,
                  color: _currentIndex == 3
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.person,
                  color: _currentIndex == 4
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
          ],
        )),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Home(),
            Services(),
            Operation(),
            History(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
