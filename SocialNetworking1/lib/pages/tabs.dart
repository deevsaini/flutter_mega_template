/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:socialnetworking/helper/style.dart';
import 'package:socialnetworking/pages/account.dart';
import 'package:socialnetworking/pages/activities.dart';
import 'package:socialnetworking/pages/home.dart';
import 'package:socialnetworking/pages/messages.dart';
import 'package:socialnetworking/pages/notification.dart';

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
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 30,
              ),
            ],
          ),
          child: TabBar(
            labelColor: appColor,
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
                  Icons.home_outlined,
                  color: _currentIndex == 0
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.live_tv_outlined,
                  color: _currentIndex == 1
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: _currentIndex == 2
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: _currentIndex == 3
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person_outline,
                  color: _currentIndex == 4
                      ? appColor
                      : Color.fromARGB(255, 185, 196, 207),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            home(),
            activities(),
            messages(),
            notification(),
            account(),
          ],
        ),
      ),
    );
  }
}
