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
import 'package:ride/pages/driverInformation.dart';
import 'package:ride/pages/history.dart';
import 'package:ride/pages/home.dart';
import 'package:ride/pages/inputPromo.dart';
import 'package:ride/pages/invitefriends.dart';
import 'package:ride/pages/notification.dart';
import 'package:ride/pages/payment.dart';
import 'package:ride/pages/setting.dart';

class chooseCar extends StatefulWidget {
  chooseCar({Key? key}) : super(key: key);

  static const String page_id = "Choose Car";

  @override
  State<chooseCar> createState() => _chooseCarState();
}

class _chooseCarState extends State<chooseCar> {
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

  List<Item> carType = <Item>[
    Item('SEDAN', 'assets/images/active.png'),
    Item('SUV', 'assets/images/active.png'),
    Item('VAN', 'assets/images/active.png'),
  ];

  int type = 0;

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
                      Text(
                        'CHOOSE CAR',
                        style: TextStyle(
                            fontFamily: 'semi-bold',
                            color: Colors.grey,
                            fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(carType.length, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                type = index;
                              });
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    child: Image.asset(
                                      carType[index].img,
                                      color: type == index
                                          ? styleColor
                                          : Colors.grey.shade600,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        carType[index].name,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: type == index
                                                ? styleColor
                                                : Colors.grey.shade600),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.people_outline,
                                              size: 15,
                                              color: type == index
                                                  ? styleColor
                                                  : Colors.grey.shade600),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '1-4',
                                            style: TextStyle(
                                                color: type == index
                                                    ? styleColor
                                                    : Colors.grey.shade600),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TRIP FEE',
                            style: TextStyle(
                                fontFamily: 'semi-bold',
                                color: Colors.grey,
                                fontSize: 16),
                          ),
                          Text(
                            '\$20.00',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => inputPromo()));
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/coupen.png',
                              height: 20,
                              width: 20,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('INPUT PROMO CODE')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      gradientButton(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => driverInformation()));
                      }, 'REQUEST')
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

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
