/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance3_fluttermarketplace/pages/accountPage.dart';
import 'package:finance3_fluttermarketplace/pages/homePage.dart';
import 'package:finance3_fluttermarketplace/pages/notificationPage.dart';
import 'package:finance3_fluttermarketplace/pages/reportPage.dart';
import 'package:finance3_fluttermarketplace/pages/walletPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class tabBarPage extends StatefulWidget {
  tabBarPage({Key? key}) : super(key: key);

  static const String pageId = 'tabBarPage';

  @override
  State<tabBarPage> createState() => _tabBarPageState();
}

class _tabBarPageState extends State<tabBarPage> {
  int _currentIndex = 2;
  var radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          child: (TabBar(
            labelColor: style.appColor,
            unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.symmetric(horizontal: 0),
            labelStyle: TextStyle(
              fontFamily: 'regular',
              fontSize: 12,
            ),
            onTap: (int index) => setState(() => _currentIndex = index),
            tabs: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      FontAwesomeIcons.wallet,
                      color: _currentIndex == 0
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 0 ? 30 : 20,
                    ),
                    text: 'My Wallet'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      Icons.person,
                      color: _currentIndex == 1
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 1 ? 30 : 20,
                    ),
                    text: 'Account'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                  icon: Icon(
                    Icons.home,
                    color: _currentIndex == 2
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 2 ? 35 : 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      Icons.notifications,
                      color: _currentIndex == 3
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 3 ? 30 : 20,
                    ),
                    text: 'Notification'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Tab(
                    icon: Icon(
                      Icons.report,
                      color: _currentIndex == 4
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 4 ? 30 : 20,
                    ),
                    text: 'Report'),
              ),
            ],
          )),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            walletPage(),
            accountPage(),
            homePage(),
            notificationPage(),
            reportPage(),
          ],
        ),
      ),
    );
  }
}
