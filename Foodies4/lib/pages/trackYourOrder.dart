/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class trackYourOrder extends StatefulWidget {
  trackYourOrder({Key? key}) : super(key: key);

  static const String page_id = "Track Your Order";

  @override
  _trackYourOrderState createState() => _trackYourOrderState();
}

class _trackYourOrderState extends State<trackYourOrder> {
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
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Track Order',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 20.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Text('Trip Route'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(child: Text('Pizza hut, \n Street 5')),
                          Text(
                            '----------',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Container(child: Text('Nasr City, \n Street 7')),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.blue,
                              ),
                              Text('4.5 Km')
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: Colors.blue,
                              ),
                              Text('(5 Minutes)')
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: style.appColor,
                            radius: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/images/profile.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Driver 1',
                                    style: style.mediumText(),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: style.secondaryColor,
                                        size: 10,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: style.secondaryColor,
                                        size: 10,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: style.secondaryColor,
                                        size: 10,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: style.secondaryColor,
                                        size: 10,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: style.secondaryColor,
                                        size: 10,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Calm,Nasr',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          softWrap: false,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Chip(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            backgroundColor: Colors.red,
                            label: Text(
                              'Call',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Chip(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            backgroundColor: Colors.green,
                            label: Text(
                              'Chat',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Order Details'),
                        style: ElevatedButton.styleFrom(
                          primary: style.secondaryColor,
                          onPrimary: Colors.white,
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
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
}
