/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';
import 'package:zomato/pages/account.dart';
import 'package:zomato/pages/insights.dart';
import 'package:zomato/pages/menu.dart';
import 'package:zomato/pages/orders.dart';

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
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: TabBar(
            labelColor: appColor,
            unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
            labelPadding: EdgeInsets.symmetric(horizontal: 0),
            labelStyle: TextStyle(
              fontFamily: 'regular',
              fontSize: 14,
            ),
            onTap: (int index) => setState(() => _currentIndex = index),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.fastfood,
                  color: _currentIndex == 0
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: "Orders",
              ),
              Tab(
                icon: Icon(
                  Icons.menu_book,
                  color: _currentIndex == 1
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: "Menu",
              ),
              Tab(
                icon: Icon(
                  Icons.insights,
                  color: _currentIndex == 2
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: "Insights",
              ),
              Tab(
                icon: Icon(
                  Icons.store,
                  color: _currentIndex == 3
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: "Account",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            orders(),
            menu(),
            insights(),
            account(),
          ],
        ),
      ),
    );
  }
}
