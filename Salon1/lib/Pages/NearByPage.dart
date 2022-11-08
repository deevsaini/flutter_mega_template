/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:salon1/Pages/ServicesInfoPage.dart';
import 'package:salon1/Pages/SpecialistInfoPage.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;

class NearByPage extends StatefulWidget {
  NearByPage({Key? key}) : super(key: key);

  static const String PageId = 'NearByPage';

  @override
  State<NearByPage> createState() => _NearByPageState();
}

class _NearByPageState extends State<NearByPage> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: new Center(
          child: new Text(
        'Salon Near You',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontFamily: 'bold'),
      )),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  markers: _markers,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(21.5397106, 71.8215543), zoom: 15),
                ),
              ),
              Positioned(
                bottom: -20,
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
            child: Column(
              children: [
                _buildTitle('Service at home'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildProfile2(
                          Image.asset('assets/images/user1.png'), ('Hardik')),
                      buildProfile2(
                          Image.asset('assets/images/user2.png'), ('Rahul')),
                      buildProfile2(
                          Image.asset('assets/images/user3.png'), ('Jaydeep')),
                      buildProfile2(
                          Image.asset('assets/images/user4.png'), ('Mausam')),
                      buildProfile2(
                          Image.asset('assets/images/user5.png'), ('Shailly')),
                      buildProfile2(
                          Image.asset('assets/images/user6.png'), ('Hirani')),
                      buildProfile2(
                          Image.asset('assets/images/user7.png'), ('Devang')),
                      buildProfile2(
                          Image.asset('assets/images/user8.png'), ('Jagdish')),
                      buildProfile2(
                          Image.asset('assets/images/user9.png'), ('Mayank')),
                      buildProfile2(
                          Image.asset('assets/images/user10.png'), ('Darshan')),
                    ],
                  ),
                ),
                _buildTitle('Top Salon'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        _buildCategories('Reflection Beauty Salon',
                            'assets/images/h2.jpg', 'Eva Surbhi Complex'),
                        _buildCategories('Lovely Beauty Salon',
                            'assets/images/h6.jpg', 'Hong Complex'),
                        _buildCategories('Showsen Salon',
                            'assets/images/h3.jpg', 'Iscon Complex'),
                        _buildCategories('Beauty Hair Art',
                            'assets/images/h4.jpg', 'HydRaw Center'),
                        _buildCategories('Danwer Salon', 'assets/images/h5.jpg',
                            'Wester Complex'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 20, fontFamily: 'bold'),
          ),
          Text(
            'View All >',
            style: TextStyle(fontSize: 15, color: style.appColor),
          ),
        ],
      ),
    );
  }

  Widget buildProfile2(img, txt) {
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SpecialistInfoPage()))
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                border: Border.all(width: 5, color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(25),
                  child: FittedBox(
                    child: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '$txt',
                style: TextStyle(fontFamily: 'semibold', color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories(txt, img, txt2) {
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ServicesInfoPage()))
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '4',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            '$txt',
                            style: TextStyle(fontFamily: 'bold', fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            '$txt2',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: style.appColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Book',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
