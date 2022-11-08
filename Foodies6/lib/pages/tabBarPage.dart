/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/discoverPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/favoritePage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/messagePage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/ordersPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/profilePage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
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
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: (TabBar(
              labelColor: style.itemColor,
              unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color: style.itemColor, width: 3.0),
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
                    Icons.compass_calibration,
                    color: _currentIndex == 0
                        ? style.itemColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 0 ? 30 : 20,
                  ),
                  text: 'Discover',
                ),
                Tab(
                  icon: Icon(
                    Icons.calendar_month,
                    color: _currentIndex == 1
                        ? style.itemColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 1 ? 30 : 20,
                  ),
                  text: 'Orders',
                ),
                Tab(
                  icon: Icon(
                    Icons.star,
                    color: _currentIndex == 2
                        ? style.itemColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 2 ? 30 : 20,
                  ),
                  text: 'Favorite',
                ),
                Tab(
                  icon: Icon(
                    Icons.message,
                    color: _currentIndex == 3
                        ? style.itemColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 3 ? 30 : 20,
                  ),
                  text: 'Message',
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: _currentIndex == 4
                        ? style.itemColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 4 ? 30 : 20,
                  ),
                  text: 'Profile',
                ),
              ],
            )),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            discoverPage(),
            ordersPage(),
            favoritePage(),
            messagePage(),
            profilePage(),
          ],
        ),
      ),
    );
  }
}
