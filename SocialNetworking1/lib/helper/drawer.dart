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
import 'package:socialnetworking/pages/findFriend.dart';

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
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(color: appColor),
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
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
                        image: AssetImage('assets/images/man.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Jaydeep Hirani',
                style: TextStyle(
                    fontFamily: 'semi-bold', fontSize: 18, color: Colors.white),
              ),
              Text(
                '@jaydeephirani',
                style: TextStyle(color: Colors.white, fontFamily: 'regular'),
              ),
              SizedBox(
                height: 30,
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
                                builder: (context) => findFriend()));
                      },
                      'Discover',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => profile()));
                      },
                      'Messages',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => myBookings()));
                      },
                      'Friends',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => favAgent()));
                      },
                      'Groups',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => categories()));
                      },
                      'Invite Friends',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => setting()));
                      },
                      'Setting',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();

                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => history()));
                      },
                      'Logout',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget drawerField(route, text) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: InkWell(
      onTap: route,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontFamily: 'regular', fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
