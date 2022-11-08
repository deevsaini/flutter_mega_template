/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride/helper/style.dart';
import 'package:ride/pages/driverContact.dart';
import 'package:ride/pages/history.dart';
import 'package:ride/pages/home.dart';
import 'package:ride/pages/invitefriends.dart';
import 'package:ride/pages/notification.dart';
import 'package:ride/pages/payment.dart';
import 'package:ride/pages/setting.dart';

class driverInformation extends StatefulWidget {
  driverInformation({Key? key}) : super(key: key);

  static const String page_id = "Driver Information";

  @override
  State<driverInformation> createState() => _driverInformationState();
}

class _driverInformationState extends State<driverInformation> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'Jazz Road No 23, Maiden',
                              style: TextStyle(color: styleColor, fontSize: 16),
                            ),
                          )
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
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'Harvard University',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/profile.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hardik Gohil',
                                    style: TextStyle(
                                        fontFamily: 'semi-bold', fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Toyota Avanta B 2525 SS',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'DISTANCE',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text('0.5 km'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'TIME',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text('20 min'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'PRICE',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text('\$20.00'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      gradientButton(() {
                        showDialog(
                            context: context,
                            builder: (BuildContext Context) {
                              return bookConfirm();
                            });
                      }, 'CONTINUE')
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bookConfirm() {
    return AlertDialog(
        contentPadding: EdgeInsets.all(10),
        content: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(
                'Booking Successfully',
                style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      appColor,
                      styleColor,
                    ],
                  ),
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your booking has been confirmation, Driver will come in 3 minutes',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              gradientButton(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => driverContact()));
              }, 'DONE')
            ],
          ),
        ));
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
