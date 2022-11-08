/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:music/helper/style.dart';
import 'package:music/pages/favourite.dart';
import 'package:music/pages/home.dart';
import 'package:music/pages/myLibrary.dart';
import 'package:music/pages/myProfile.dart';
import 'package:music/pages/search.dart';

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
      length: 5,
      child: Scaffold(
        bottomNavigationBar: (TabBar(
          indicator:
              BoxDecoration(border: Border(top: BorderSide(color: appColor))),
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
                Icons.home_outlined,
                color: _currentIndex == 0
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(
                Icons.search_outlined,
                color: _currentIndex == 1
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Search',
            ),
            Tab(
              icon: Icon(
                Icons.library_add_outlined,
                color: _currentIndex == 2
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Library',
            ),
            Tab(
              icon: Icon(
                Icons.favorite_outline,
                color: _currentIndex == 3
                    ? appColor
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Favourite',
            ),
            Tab(
              icon: Icon(
                Icons.person_outline,
                color: _currentIndex == 4
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
            search(),
            myLibrary(),
            favourite(),
            myProfile(),
          ],
        ),
      ),
    );
  }
}
