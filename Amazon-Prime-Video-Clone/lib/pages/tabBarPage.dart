/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:prime_video_fluttermarketplace/pages/downloadPage.dart';
import 'package:prime_video_fluttermarketplace/pages/findPage.dart';
import 'package:prime_video_fluttermarketplace/pages/homePage.dart';
import 'package:prime_video_fluttermarketplace/pages/myStuffPage.dart';
import 'package:prime_video_fluttermarketplace/utilities/constancePage.dart'
    as style;

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
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.black,
          child: TabBar(
            labelColor: Colors.lightBlue,
            unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(color: Colors.transparent),
            labelPadding: EdgeInsets.symmetric(horizontal: 0),
            labelStyle: TextStyle(
              fontFamily: 'regular',
              fontSize: 12,
            ),
            onTap: (int index) => setState(() => _currentIndex = index),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0
                      ? Colors.lightBlue
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: _currentIndex == 1
                      ? Colors.lightBlue
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'Find',
              ),
              Tab(
                icon: Icon(
                  Icons.download,
                  color: _currentIndex == 2
                      ? Colors.lightBlue
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'Download',
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: _currentIndex == 3
                      ? Colors.lightBlue
                      : Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'My Stuff',
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            homePage(),
            findPage(),
            downloadPage(),
            myStuffPage(),
          ],
        ),
      ),
    );
  }
}
