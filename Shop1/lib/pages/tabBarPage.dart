/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/cartPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/favoritePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/homePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/profilePage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/searchPage.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class tabBarpage extends StatefulWidget {
  tabBarpage({Key? key}) : super(key: key);

  static const String pageId = 'tabBarpage';

  @override
  State<tabBarpage> createState() => _tabBarpageState();
}

class _tabBarpageState extends State<tabBarpage> {
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
              unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color: style.appColor, width: 3.0),
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
                    Icons.home,
                    color: _currentIndex == 0
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 0 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    color: _currentIndex == 1
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 1 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: _currentIndex == 2
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 2 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite,
                    color: _currentIndex == 3
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 3 ? 30 : 20,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: _currentIndex == 4
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 4 ? 30 : 20,
                  ),
                ),
              ],
            )),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            homePage(),
            searchPage(),
            cartPage(),
            favoritePage(),
            profilePage(),
          ],
        ),
      ),
    );
  }
}
