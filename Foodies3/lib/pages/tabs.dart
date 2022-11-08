/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/favourite.dart';
import 'package:gofoodflutter/pages/home.dart';
import 'package:gofoodflutter/pages/nearby.dart';
import 'package:gofoodflutter/pages/orders.dart';
import 'package:gofoodflutter/pages/profile.dart';
import '../helper/style.dart' as style;

class TabsExample extends StatefulWidget {
    TabsExample({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Tabs';

    @override
    _TabsExampleState createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {

    int _currentIndex = 0;
    @override
    Widget build(BuildContext context) {
        return DefaultTabController(
            length: 5,
            child: Scaffold(
                bottomNavigationBar: (
                    TabBar(
                        labelColor: style.appColor,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
                        unselectedLabelColor: Color.fromARGB(255, 122,122,122),
                        indicatorColor: Colors.transparent,
                        labelPadding: EdgeInsets.all(0),
                        labelStyle: TextStyle(
                            fontFamily: 'regular',
                            fontSize: 10,
                        ),
                        onTap: (int index) => setState(() => _currentIndex = index),
                        tabs: [
                            Tab(
                                icon: Icon(Icons.home_outlined),
                                text: 'Home'
                            ),
                            Tab(
                                icon: Icon(Icons.explore),
                                text: 'Nearby'
                            ),
                            Tab(
                                icon: Icon(Icons.shopping_cart_outlined),
                                text: 'Order'
                            ),
                            Tab(
                                icon: Icon(Icons.bookmark),
                                text: 'Favourite'
                            ),
                            Tab(
                                icon: Icon(Icons.person_outline),
                                text: 'Profile'
                            ),
                        ],
                    )
                ),
                body: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                        HomePage(),
                        NearbyPage(),
                        OrdersPage(),
                        FavouritePage(),
                        ProfilePage()
                    ],
                ),
            ),
        );
    }
}