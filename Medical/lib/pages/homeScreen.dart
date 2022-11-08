/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:medical/helper/style.dart';
import 'package:medical/pages/eventAndNews.dart';
import 'package:medical/pages/searchList.dart';
import 'package:medical/pages/upcomingAppointments.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  static const String page_id = "Home Screen";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: _buildSideMenu(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text('Search Doctor'),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              secondColor,
            ],
          ),
        ),
      ),
      leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: Icon(Icons.filter_list_outlined)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notification_add_outlined),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                appColor,
                secondColor,
              ],
            ),
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/doctor.png',
                height: 110,
                width: 110,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Search doctor from our database',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'medium',
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              searchFields(
                'Doctor Practice',
                () {},
                Icons.keyboard_arrow_down_outlined,
              ),
              searchFields(
                'Location',
                () {},
                Icons.location_on_outlined,
              ),
              searchFields(
                'Date',
                () {},
                Icons.calendar_month_outlined,
              ),
              searchFields(
                'Insurance',
                () {},
                Icons.keyboard_arrow_down_outlined,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      appColor,
                      secondColor,
                    ],
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => searchList()));
                  },
                  child: Text(
                    'Search',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                    minimumSize: const Size.fromHeight(50),
                    // padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                    shape: RoundedRectangleBorder(),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget searchFields(name, route, icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(color: darkColor),
          ),
          IconButton(
              onPressed: route,
              icon: Icon(
                icon,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }

  Widget _buildSideMenu() {
    return Drawer(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                appColor,
                secondColor,
              ],
            ),
          ),
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: secondColor,
                radius: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 30,
                    width: 30,
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'John Smith',
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    drawerField(
                      () {},
                      Icons.book_online_outlined,
                      'Booked Doctor',
                    ),
                    drawerField(
                      () {
                        // Scaffold.of(context).openEndDrawer();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => upcomingAppointment()));
                      },
                      Icons.upcoming_outlined,
                      'Upcoming Appointment',
                    ),
                    drawerField(
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => eventAndNews()));
                      },
                      Icons.book_online_outlined,
                      'News & Health Guide',
                    ),
                    drawerField(
                      () {},
                      Icons.info_outline,
                      'About Mapple Doc',
                    ),
                    drawerField(
                      () {},
                      Icons.lock_outline,
                      'Terms of Use',
                    ),
                    drawerField(
                      () {},
                      Icons.settings_outlined,
                      'Settings',
                    ),
                    drawerField(
                      () {},
                      Icons.logout_outlined,
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

  Widget drawerField(route, icon, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      child: InkWell(
        onTap: route
        // Scaffold.of(context).openEndDrawer();
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => paymentMethod()));
        ,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white54,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: TextStyle(fontFamily: 'medium', color: Colors.white70),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
