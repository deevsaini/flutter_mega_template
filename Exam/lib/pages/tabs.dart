/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/history.dart';
import 'package:elearn/pages/home.dart';
import 'package:elearn/pages/leaderboard.dart';
import 'package:elearn/pages/profile.dart';
import 'package:flutter/material.dart';

class tabs extends StatefulWidget {
  tabs({Key? key}) : super(key: key);

  static const String page_id = "Tabs";

  @override
  State<tabs> createState() => _tabsState();
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
          labelColor: appColor,
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
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(
                Icons.leaderboard_outlined,
                color: _currentIndex == 1
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Leaderboard',
            ),
            Tab(
              icon: Icon(
                Icons.access_time_outlined,
                color: _currentIndex == 2
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'History',
            ),
            Tab(
              icon: Icon(
                Icons.person_outline,
                color: _currentIndex == 3
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Profile',
            ),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            home(),
            leaderboard(),
            history(),
            profile(),
          ],
        ),
      ),
    );
  }
}
