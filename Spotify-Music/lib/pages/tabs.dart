/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/pages/premium.dart';
import 'package:spotify/pages/search.dart';
import 'package:spotify/pages/yourLibrary.dart';

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
        bottomNavigationBar: (TabBar(
          labelColor: Colors.white,
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
                    ? Colors.white
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(
                Icons.search_outlined,
                color: _currentIndex == 1
                    ? Colors.white
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Search',
            ),
            Tab(
              icon: Icon(
                Icons.library_books_outlined,
                color: _currentIndex == 2
                    ? Colors.white
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Your Library',
            ),
            Tab(
              icon: Icon(
                Icons.language,
                color: _currentIndex == 3
                    ? Colors.white
                    : Color.fromARGB(255, 185, 196, 207),
              ),
              text: 'Premium',
            ),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            home(),
            search(),
            yourLibrary(),
            premium(),
          ],
        ),
      ),
    );
  }
}
