/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:ride/helper/style.dart';
import 'package:ride/pages/chooseCar.dart';
import 'package:ride/pages/history.dart';
import 'package:ride/pages/invitefriends.dart';
import 'package:ride/pages/notification.dart';
import 'package:ride/pages/payment.dart';
import 'package:ride/pages/setting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Id-1'),
          position: LatLng(21.5397106, 71.8215543),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildSideMenu(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              styleColor,
            ],
          ),
        ),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.dehaze_outlined),
      ),
      title: Text('Home'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => notification()));
          },
          icon: Icon(Icons.notifications_outlined),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: styleColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              hintText: 'Jazz Road No 23, Maiden',
                              hintStyle: TextStyle(color: styleColor),
                              filled: true,
                              fillColor: Colors.transparent,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => chooseCar()));
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  hintText: 'Harvard University',
                                  hintStyle: TextStyle(color: Colors.black),
                                  filled: true,
                                  fillColor: Colors.transparent,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
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
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                appColor,
                styleColor,
              ],
            ),
          ),
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Jaydeep Hirani',
                style: whiteHeadText(),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      Icons.home_outlined,
                      'Home',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => payment()));
                      },
                      Icons.credit_card_outlined,
                      'Payment',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => history()));
                      },
                      Icons.history,
                      'History',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => notification()));
                      },
                      Icons.notifications_outlined,
                      'Notification',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => inviteFriends()));
                      },
                      Icons.people_alt_outlined,
                      'Invite Friends',
                    ),
                    drawerField(
                      () {
                        _scaffoldKey.currentState?.openEndDrawer();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => setting()));
                      },
                      Icons.settings_outlined,
                      'Settings',
                    ),
                    drawerField(
                      () {},
                      Icons.power_settings_new_outlined,
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
          ],
        ),
      ),
    );
  }
}
