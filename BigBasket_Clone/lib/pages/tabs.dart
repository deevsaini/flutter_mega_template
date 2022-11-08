/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/basket.dart';
import 'package:bigbasket/pages/categories.dart';
import 'package:bigbasket/pages/home.dart';
import 'package:bigbasket/pages/my-list.dart';
import 'package:bigbasket/pages/search.dart';
import 'package:flutter/material.dart';
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
                                icon: Icon(Icons.storefront_outlined),
                                text: 'Home'
                            ),
                            Tab(
                                icon: Icon(Icons.shopping_bag_outlined),
                                text: 'Categories'
                            ),
                            Tab(
                                icon: Icon(Icons.search_outlined),
                                text: 'Search'
                            ),
                            Tab(
                                icon: Icon(Icons.people_outline),
                                text: 'My List'
                            ),
                            Tab(
                                icon: Icon(Icons.people_outline),
                                text: 'Basket'
                            ),
                        ],
                    )
                ),
                body: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                        HomePage(),
                        CategoriesPage(),
                        SearchPage(),
                        MyListPage(),
                        BasketPage(),
                    ],
                ),
            ),
        );
    }

}