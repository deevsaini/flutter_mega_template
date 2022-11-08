/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/inbox.dart';
import 'package:car/pages/market.dart';
import 'package:car/pages/myCars.dart';
import 'package:car/pages/notification.dart';
import 'package:car/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class tabs extends StatefulWidget {
  tabs({Key? key}) : super(key: key);

  static const String page_id = "Tabs";

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> with TickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController tabController = TabController(length: 5, vsync: this);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      market(),
      inbox(),
      notification(),
      myCars(),
      profile(),
    ];
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: InkWell(
              child: (GNav(
                rippleColor: appColor,
                hoverColor: appColor,
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
                    text: 'Market',
                    backgroundColor: appColor,
                  ),
                  GButton(
                    icon: Icons.message,
                    text: 'Inbox',
                    backgroundColor: appColor,
                  ),
                  GButton(
                    icon: Icons.notifications,
                    text: 'Notification',
                    backgroundColor: appColor,
                  ),
                  GButton(
                    icon: Icons.stars_rounded,
                    text: 'My Cars',
                    backgroundColor: appColor,
                  ),
                  GButton(
                    icon: Icons.tag_faces,
                    text: 'Profile',
                    backgroundColor: appColor,
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
