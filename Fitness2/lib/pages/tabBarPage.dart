/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/homePage.dart';
import 'package:fitness_app/pages/profilePage.dart';
import 'package:fitness_app/pages/programPage.dart';
import 'package:fitness_app/pages/searchPage.dart';
import 'package:fitness_app/pages/trainerPage.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class tabBarPage extends StatefulWidget {
  tabBarPage({Key? key}) : super(key: key);

  static const String pageId = 'tabBarPage';

  @override
  State<tabBarPage> createState() => _tabBarPageState();
}

class _tabBarPageState extends State<tabBarPage> {
  int _currentIndex = 0;
  var radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TabBar(
              unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.transparent, width: 3.0),
                ),
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              labelStyle: TextStyle(
                fontFamily: 'regular',
                fontSize: 12,
              ),
              onTap: (int index) => setState(() => _currentIndex = index),
              tabs: [
                Tab(
                  icon: Icon(
                    _currentIndex == 0 ? Icons.home : Icons.home_outlined,
                    color: _currentIndex == 0
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 0 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    _currentIndex == 1
                        ? Icons.calendar_month
                        : Icons.calendar_month_outlined,
                    color: _currentIndex == 1
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 1 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    _currentIndex == 2 ? Icons.search : Icons.search_outlined,
                    color: _currentIndex == 2
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 2 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    _currentIndex == 3 ? Icons.people : Icons.people_outline,
                    color: _currentIndex == 3
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 3 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    _currentIndex == 4 ? Icons.person : Icons.person_outline,
                    color: _currentIndex == 4
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 4 ? 30 : 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            homePage(),
            programPage(),
            searchPage(),
            trainerPage(),
            profilePage(),
          ],
        ),
      ),
    );
  }
}
