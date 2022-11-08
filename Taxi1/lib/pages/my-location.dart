/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/search-location.dart';
import 'package:taxibookflutter/pages/sidemenu.dart';
import '../helper/style.dart' as style;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyLocationPage extends StatefulWidget {
    MyLocationPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'My Location';

    @override
    State<MyLocationPage> createState() => _MyLocationPageState();
}

class _MyLocationPageState extends State<MyLocationPage> {

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

    List<Item> carType = <Item>[
        Item('Car', 'assets/images/car-active.png', 'assets/images/car-deactive.png'),
        Item('Budget', 'assets/images/budget-active.png', 'assets/images/budget-deactive.png'),
        Item('Tuk Tuk', 'assets/images/tuk-tuk-active.png', 'assets/images/tuk-tuk-deactive.png'),
        Item('City', 'assets/images/city-active.png', 'assets/images/city-deactive.png'),
        Item('Van', 'assets/images/van-active.png', 'assets/images/van-deactive.png'),
    ];

    int type = 0;
    double deviceHeight = 0;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    @override
    Widget build(BuildContext context) {
        deviceHeight = MediaQuery.of(context).size.height;
        return Scaffold(
            key: _scaffoldKey,
            drawer: Menu(),
            body: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                    children: [
                        Container(
                            color: Colors.grey[300],
                            child: GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: _kGooglePlex,
                                onMapCreated: (GoogleMapController controller) {
                                    _controller.complete(controller);
                                },
                            ),
                        ),
                        Positioned(
                            right: 16,
                            top: 70,
                            child: IconButton(
                                onPressed: () {
                                    Menu();
                                },
                                icon: Icon(Icons.menu, color: Colors.black, size: 34),
                            )
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 120, bottom: 20),
                            height: double.infinity,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    TextField(
                                        decoration: style.textInputDecorationWithIcons(
                                            Icons.fiber_manual_record, style.appGreen, 'Enter Location'
                                        ),
                                    ),
                                    SizedBox(
                                        width: 250,
                                        child: _buildButton(),
                                    )
                                ],
                            ),
                        ),

                        Positioned(
                            right: 0,
                            top: (deviceHeight/2) - 225,
                            child: Container(
                                width: 120,
                                height: 491,
                                padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25)
                                    )
                                ),
                                child: Column(
                                    children: List.generate(carType.length, (index) {
                                        return InkWell(
                                            onTap: () {
                                                setState(() {
                                                    type = index;
                                                });
                                            },
                                            child: Container(
                                                height: 95,
                                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Text(carType[index].name,
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: type == index ? Color.fromARGB(255,94, 95, 102) : Color.fromARGB(255,204, 204, 204)
                                                            ),
                                                        ),
                                                        Container(
                                                            width: 60,
                                                            margin: EdgeInsets.only(bottom: 10),
                                                            child: Image(
                                                                image: index == type ? AssetImage(carType[index].img1) : AssetImage(carType[index].img2),
                                                                width: 50,
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        );
                                    }),
                                ),
                            )
                        ),

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildButton() {
        return ElevatedButton(
            onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                        return SearchLocationPage();
                    }
                );
            },
            style: style.roundButton(),
            child: Text('I\'m Here',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'medium',
                ),
            ),
        );
    }

}

class Item {
    const Item(this.name, this.img1, this.img2);
    final String name;
    final String img1;
    final String img2;
}