/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:banky/helper/style.dart' as style;
import 'package:banky/pages/account.dart';
import 'package:banky/pages/addNew.dart';
import 'package:banky/pages/creditCard.dart';
import 'package:banky/pages/home.dart';
import 'package:banky/pages/statistics.dart';
import 'package:flutter/material.dart';

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
        bottomNavigationBar: TabBar(
          labelColor: style.appColor,
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.bar_chart,
                color: _currentIndex == 1
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add,
                color: _currentIndex == 2
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.credit_card,
                color: _currentIndex == 3
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 4
                    ? style.appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            home(),
            statistics(),
            addNew(),
            creditCard(),
            account(),
          ],
        ),
      ),
    );
  }
}
