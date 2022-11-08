/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/appointment.dart';
import 'package:salon/pages/home.dart';
import 'package:salon/pages/location.dart';
import 'package:salon/pages/chatList.dart';
import 'package:salon/pages/profile.dart';

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
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: (TabBar(
          padding: EdgeInsets.only(bottom: 15),
          labelColor: style.appColor,
          unselectedLabelColor: Color.fromARGB(255, 185, 196, 207),
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          labelStyle: TextStyle(
            fontFamily: 'regular',
            fontSize: 16,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
                color: _currentIndex == 0
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.location_on_outlined,
                color: _currentIndex == 1
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.calendar_today,
                color: _currentIndex == 2
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.chat_rounded,
                color: _currentIndex == 3
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 4
                    ? Colors.black
                    : Color.fromARGB(255, 185, 196, 207),
              ),
            ),
          ],
        )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            home(),
            location(),
            appointment(),
            chatList(),
            profile(),
          ],
        ),
      ),
    );
  }
}
