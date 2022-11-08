/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor/pages/doctorPage.dart';
import 'package:doctor/pages/homePage.dart';
import 'package:doctor/pages/informationPage.dart';
import 'package:doctor/pages/messagePage.dart';
import 'package:doctor/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

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
                  icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: _currentIndex == 0
                          ? style.appColor.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.home,
                      color: _currentIndex == 0
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 0 ? 30 : 20,
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: _currentIndex == 1
                          ? style.appColor.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.chat,
                      color: _currentIndex == 1
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 1 ? 30 : 20,
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: _currentIndex == 2
                          ? style.appColor.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.info,
                      color: _currentIndex == 2
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 2 ? 30 : 20,
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: _currentIndex == 3
                          ? style.appColor.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.local_hospital,
                      color: _currentIndex == 3
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 3 ? 30 : 20,
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: _currentIndex == 4
                          ? style.appColor.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.person,
                      color: _currentIndex == 4
                          ? style.appColor
                          : Color.fromARGB(255, 185, 196, 207),
                      size: _currentIndex == 4 ? 30 : 20,
                    ),
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
            messagePage(),
            informationPage(),
            doctorPage(),
            profilePage(),
          ],
        ),
      ),
    );
  }
}
