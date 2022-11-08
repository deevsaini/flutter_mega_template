/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/categories.dart';
import 'package:realestate/pages/favAgent.dart';
import 'package:realestate/pages/message.dart';
import 'package:realestate/pages/messanger.dart';
import 'package:realestate/pages/myBookings.dart';
import 'package:realestate/pages/profile.dart';
import 'package:realestate/pages/selectLocation.dart';
import 'package:realestate/pages/setting.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldKey,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: appColor),
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Jaydeep Hirani',
                  style: TextStyle(
                      fontFamily: 'semi-bold',
                      fontSize: 18,
                      color: Colors.amber),
                ),
                Text(
                  'Real Agent',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => selectLocation()));
                        },
                        Icons.person,
                        'Select Location',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profile()));
                        },
                        Icons.person,
                        'Profile',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => myBookings()));
                        },
                        Icons.menu_book,
                        'My Bookings',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => favAgent()));
                        },
                        Icons.person,
                        'Favourite Agent',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => categories()));
                        },
                        Icons.category,
                        'Categories',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => messanger()));
                        },
                        Icons.message,
                        'Messanger',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => setting()));
                        },
                        Icons.settings,
                        'Setting',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();

                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => history()));
                        },
                        Icons.history,
                        'Activities',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => notification()));
                        },
                        Icons.favorite,
                        'Collections',
                      ),
                      drawerField(
                        () {
                          _scaffoldKey.currentState?.openEndDrawer();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => inviteFriends()));
                        },
                        Icons.location_on,
                        'Address',
                      ),
                      drawerField(
                        () {
                          // _scaffoldKey.currentState?.openEndDrawer();
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => setting()));
                        },
                        Icons.article_sharp,
                        'Terms & Conditions',
                      ),
                      drawerField(
                        () {
                          // _scaffoldKey.currentState?.openEndDrawer();
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => setting()));
                        },
                        Icons.chat_bubble,
                        'Help',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                    fontFamily: 'medium',
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget drawerField(route, icon, text) {
  return Container(
    decoration:
        BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
    child: InkWell(
      onTap: route,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: 'medium', color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
