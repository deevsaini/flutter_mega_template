/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travelo/pages/appointmentPage.dart';
import 'package:travelo/pages/fevoritePage.dart';
import 'package:travelo/pages/homePage.dart';
import 'package:travelo/pages/profilePage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

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
      fevoritePage(),
      appointmentPage(),
      profilePage(),
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
                textStyle: TextStyle(fontFamily: 'bold', color: style.appColor),
                duration: Duration(milliseconds: 300),
                gap: 5,
                color: style.appColor.withOpacity(0.3),
                activeColor: style.appColor,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    backgroundColor: style.appColor.withOpacity(0.2),
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Favorite',
                    backgroundColor: style.appColor.withOpacity(0.2),
                  ),
                  GButton(
                    icon: Icons.card_travel,
                    text: 'Appointment',
                    backgroundColor: style.appColor.withOpacity(0.2),
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                    backgroundColor: style.appColor.withOpacity(0.2),
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
