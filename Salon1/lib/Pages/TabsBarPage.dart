/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon1/Pages/AppointmentPage.dart';
import 'package:salon1/Pages/DiscoverPage.dart';
import 'package:salon1/Pages/MessagePage.dart';
import 'package:salon1/Pages/NearByPage.dart';
import 'package:salon1/Pages/ProfilePage.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;

class tabsBarPage extends StatefulWidget {
  tabsBarPage({Key? key}) : super(key: key);
  static const String PageId = 'tabsBarPage';

  @override
  State<tabsBarPage> createState() => _tabsBarPageState();
}

class _tabsBarPageState extends State<tabsBarPage> {
  int _currentIndex = 0;
  var radius = Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          labelColor: style.appColor,
          unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
          indicatorColor: style.appColor,
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          indicator: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
            gradient: RadialGradient(
                center: Alignment(0, -0.1), // near the top right
                radius: 0.4,
                colors: [
                  const Color(0xFFffb15c),
                  const Color(0xFFFFFFFF),
                ],
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
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
                    Icons.home,
                    color: _currentIndex == 0
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 0 ? 30 : 20,
                  ),
                  text: 'Discover'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Tab(
                  icon: Icon(
                    Icons.location_on,
                    color: _currentIndex == 1
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 1 ? 30 : 20,
                  ),
                  text: 'NearBy'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Tab(
                  icon: Icon(
                    Icons.app_registration_rounded,
                    color: _currentIndex == 2
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 2 ? 30 : 20,
                  ),
                  text: 'Appointment'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Tab(
                  icon: Icon(
                    Icons.chat_bubble,
                    color: _currentIndex == 3
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 3 ? 30 : 20,
                  ),
                  text: 'Messages'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Tab(
                  icon: Icon(
                    Icons.person,
                    color: _currentIndex == 4
                        ? style.appColor
                        : Color.fromARGB(255, 185, 196, 207),
                    size: _currentIndex == 4 ? 30 : 20,
                  ),
                  text: 'Profile'),
            ),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            DiscoverPage(),
            NearByPage(),
            AppointmentPage(),
            MessagePage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
