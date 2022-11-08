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
import 'package:hotelbooking/pages/hotel-list.dart';
import '../helper/style.dart' as style;

class MapSearchPage extends StatefulWidget {
    MapSearchPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Home';

    @override
    State<MapSearchPage> createState() => _MapSearchPageState();
}

class _MapSearchPageState extends State<MapSearchPage> {

    Completer<GoogleMapController> _controller = Completer();

    static final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    static final CameraPosition _kLake = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(37.43296265331129, -122.08832357078792),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414
    );

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Search By Map'),
                titleTextStyle: style.pageTitleText(),
                flexibleSpace: Container(
                  decoration: style.appBarDecoration(),
                ),
                actions: [
                    IconButton(
                        onPressed: () {
                            Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close)
                    )
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return Container(

            child: Stack(
                children: [
                    Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                                _controller.complete(controller);
                            },
                        ),
                    ),
                    Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.only(left: 16, top: 40, right: 16, bottom: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Row(
                                    children: [
                                        Expanded(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(0.1),
                                                          spreadRadius: 1,
                                                          blurRadius: 3,
                                                          offset: Offset(0, 3),
                                                        )
                                                    ],
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(30)
                                                    ),
                                                    color: Colors.white
                                                ),
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                                                        hintText: 'Search',
                                                        prefixIcon: Icon(Icons.search, color: style.appColor),
                                                        border: InputBorder.none,
                                                        enabledBorder: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                                    ),
                                                ),
                                            )
                                        ),
                                        SizedBox(width: 16),
                                        FloatingActionButton(
                                            onPressed: () {
                                                Navigator.push(context, new MaterialPageRoute(
                                                    builder: (context) => new HotelListPage())
                                                );
                                            },
                                            backgroundColor: style.appColor,
                                            child: Text('Go',
                                                style: TextStyle(color: Colors.white, fontFamily: 'semi-bold'),
                                            ),
                                        )
                                    ],
                                ),
                                Container(
                                    decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8)
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ]
                                ),
                                    child: Column(
                                        children: [
                                            Container(
                                                width: double.infinity,
                                                height: 180,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(8),
                                                      topRight: Radius.circular(8),
                                                    ),
                                                    image: DecorationImage(
                                                        image: AssetImage('assets/images/back.jpg'),
                                                        fit: BoxFit.cover
                                                    )
                                                ),
                                            ),
                                            Container(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text('Lemon Tree Premier',
                                                        style: style.colorLabel(),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.star, color: style.appColor, size: 20),
                                                        Icon(Icons.star, color: style.appColor, size: 20),
                                                        Icon(Icons.star, color: style.appColor, size: 20),
                                                        Icon(Icons.star, color: style.appColor, size: 20),
                                                        Icon(Icons.star, color: Colors.grey, size: 20),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 8),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Row(
                                                          children: [
                                                            Icon(Icons.location_on, color: Colors.grey, size: 18),
                                                            SizedBox(width: 6),
                                                            Text('6.5 km from center', style: style.greyLabel())
                                                          ],
                                                        )
                                                    ),
                                                    Text('345 reviews', style: style.greyLabel())
                                                  ],
                                                ),
                                                SizedBox(height: 8),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text('\$5,555', style: style.colorLabel())
                                                    ),
                                                    Text('Excellent', style: style.greyLabel())
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
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


}

class Item {
    const Item(this.sign, this.name);
    final String sign;
    final String name;
}