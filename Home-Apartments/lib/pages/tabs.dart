/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/agent.dart';
import 'package:home/pages/home_profile.dart';
import 'package:home/pages/notification.dart';
import 'package:home/pages/property_categories.dart';
import 'package:home/pages/search_property.dart';

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
          padding: EdgeInsets.all(10),
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
              icon: Icon(Icons.home,
                  color: _currentIndex == 0
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.search,
                  color: _currentIndex == 1
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.graphic_eq,
                  color: _currentIndex == 2
                      ? style.appColor
                      : const Color.fromARGB(255, 185, 196, 207)),
            ),
            Tab(
              icon: Icon(Icons.notifications,
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
            PropertyCategories(),
            SearchProperty(),
            Agent(),
            Notifications(),
            HomeProfile(),
          ],
        ),
      ),
    );
  }
}
