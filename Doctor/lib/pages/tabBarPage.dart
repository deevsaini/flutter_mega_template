/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/doctorPage.dart';
import 'package:doctor_marketplace_app/pages/homePage.dart';
import 'package:doctor_marketplace_app/pages/menuPage.dart';
import 'package:doctor_marketplace_app/pages/notificationPage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class tabBarPage extends StatefulWidget {
  tabBarPage({Key? key}) : super(key: key);

  static const String pageId = 'tabBarPage';

  @override
  State<tabBarPage> createState() => _tabBarPageState();
}

class _tabBarPageState extends State<tabBarPage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController tabController = TabController(length: 4, vsync: this);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      homePage(),
      doctorPage(),
      notificationPage(),
      menuPage(),
    ];
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: InkWell(
              child: (GNav(
                rippleColor: style.appColor,
                hoverColor: style.appColor,
                haptic: true,
                curve: Curves.easeOutExpo,
                tabBorderRadius: 15,
                textStyle: TextStyle(fontFamily: 'bold', color: Colors.white),
                duration: Duration(milliseconds: 300),
                gap: 5,
                color: Colors.grey.shade400,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    backgroundColor: style.appColor,
                  ),
                  GButton(
                    icon: Icons.local_hospital,
                    text: 'Doctors',
                    backgroundColor: style.appColor,
                  ),
                  GButton(
                    icon: Icons.notifications,
                    text: 'Notification',
                    backgroundColor: style.appColor,
                  ),
                  GButton(
                    icon: Icons.apps,
                    text: 'Menu',
                    backgroundColor: style.appColor,
                  ),
                ],
                selectedIndex: _currentIndex,
                onTabChange: (index) {
                  setState(() {
                    _currentIndex = index;
                    print(_currentIndex);
                    tabController.animateTo(index);
                  });
                },
              )),
            ),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: tabController,
          children: pages,
        ),
      ),
    );
  }
}
