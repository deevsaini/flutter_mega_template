/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:newsalonflutter/pages/bookAppointment.dart';
import 'package:newsalonflutter/pages/featured.dart';
import 'package:newsalonflutter/pages/more.dart';
import 'package:newsalonflutter/pages/products.dart';
import 'package:newsalonflutter/pages/services.dart';
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
//                  floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
//                  floatingActionButton: FloatingActionButton(
//                      onPressed: () { },
//                      tooltip: 'Increment',
//                      child: Icon(Icons.add),
//                      elevation: 2.0,
//                  ),
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
                                    icon: _currentIndex == 0 ?
                                    Image(
                                        image: AssetImage('assets/images/tabs/star_active.png'),
                                        width: 20,
                                    ) :
                                    Image(
                                        image: AssetImage('assets/images/tabs/star_deactive.png'),
                                        width: 20,
                                    ),
                                    text: 'Featured'
                                ),
                                Tab(
                                    icon: _currentIndex == 1 ?
                                    Image(
                                        image: AssetImage('assets/images/tabs/serv_active.png'),
                                        width: 20,
                                    ) :
                                    Image(
                                        image: AssetImage('assets/images/tabs/serv_deactive.png'),
                                        width: 20,
                                    ),
                                    text: 'Services'
                                ),
                                Tab(
                                    icon: _currentIndex == 2 ?
                                    Image(
                                        image: AssetImage('assets/images/tabs/check.png'),
                                        width: 20,
                                    ) :
                                    Image(
                                        image: AssetImage('assets/images/tabs/add2.png'),
                                        width: 20,
                                    ),
                                    text: 'Appointment'
                                ),
                                Tab(
                                    icon: _currentIndex == 3 ?
                                    Image(
                                        image: AssetImage('assets/images/tabs/pro_active.png'),
                                        width: 20,
                                    ) :
                                    Image(
                                        image: AssetImage('assets/images/tabs/pro_deactive.png'),
                                        width: 20,
                                    ),
                                    text: 'Products'
                                ),
                                Tab(
                                    icon: _currentIndex == 4 ?
                                    Image(
                                        image: AssetImage('assets/images/tabs/more_active.png'),
                                        width: 20,
                                    ) :
                                    Image(
                                        image: AssetImage('assets/images/tabs/more_deactive.png'),
                                        width: 20,
                                    ),
                                  text: 'More'
                                ),
                            ],
                        )
                    ),

                  body: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                        FeaturedScreen(),
                        ServicesScreen(),
                        BookAppointmentScreen(),
                        ProductsScreen(),
                        MoreScreen()
                    ],
                ),
            ),
        );
    }
}