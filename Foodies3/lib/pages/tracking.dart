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
import '../helper/style.dart' as style;

class TrackingPage extends StatefulWidget {
  TrackingPage({Key? key, Title? title}) : super(key: key);
  final String title = '';
  static const String page_id = 'Tracking';

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {

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

    int type = 0;
    double deviceHeight = 0;
    double deviceWidth = 0;

    @override
    Widget build(BuildContext context) {
        deviceHeight = MediaQuery.of(context).size.height;
        deviceWidth = MediaQuery.of(context).size.width;
        return Scaffold(
            body: Container(
                height: deviceHeight,
                child: Stack(
                    children: [
                        Container(
                            height: deviceHeight-480,
                            color: style.appGrey,
                            child: GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: _kGooglePlex,
                                onMapCreated: (GoogleMapController controller) {
                                    _controller.complete(controller);
                                },
                            ),
                        ),
                        Positioned(
                          left: 16,
                          top: 60,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                        Positioned(
                            left: 0,
//                            top: deviceHeight-200,
                            top: deviceHeight-500,
                            child: Container(
//                                height: 200,
                                height: 500,
                                width: deviceWidth,
                                decoration: style.radiusContainer(),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.all(16),
                                            decoration: borderBottom(),
                                            child: Text('Your food is coming in 05:30 PM',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'medium'
                                                ),
                                            ),
                                        ),

                                        Container(
                                            decoration: borderBottom(),
                                            padding: EdgeInsets.all(16),
                                            child: Row(
                                                children: [
                                                    Container(
                                                        height: 100,
                                                        width: 100,
                                                        margin: EdgeInsets.only(right: 16),
                                                        decoration: style.roundedImage('assets/images/food1.jpg'),
                                                    ),
                                                    Expanded(
                                                        child: Container(
                                                            child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                                Text('Coco Restaurants',
                                                                    style: TextStyle(
                                                                        fontSize: 16,
                                                                        fontFamily: 'medium'
                                                                    ),
                                                                ),
                                                                SizedBox(height: 5),
                                                                RichText(
                                                                    textAlign: TextAlign.center,
                                                                    text: TextSpan(
                                                                        text: 'ID: ',
                                                                        style: TextStyle(color: style.appColor, fontFamily: 'regular'),
                                                                        children: <TextSpan>[
                                                                            TextSpan(text: '4567343',
                                                                                style: TextStyle(color: style.appGreyText)
                                                                            ),
                                                                        ],
                                                                    ),
                                                                ),
                                                                SizedBox(height: 5),
                                                                Row(
                                                                    children: [
                                                                        Expanded(
                                                                            child: Text('1 Item',
                                                                                style: TextStyle(
                                                                                    color: style.appGreyText
                                                                                ),
                                                                            )
                                                                        ),
                                                                        Text('Shipping',
                                                                            style: TextStyle(
                                                                                color: style.appColor
                                                                            ),
                                                                        ),
                                                                    ],
                                                                )
                                                            ],
                                                          ),
                                                        )
                                                    )
                                                ],
                                            ),
                                        ),

                                        Container(
                                            decoration: borderBottom(),
                                            padding: EdgeInsets.all(16),
                                            child: Row(
                                                children: [
                                                    Container(
                                                        height: 60,
                                                        width: 60,
                                                        margin: EdgeInsets.only(right: 16),
                                                        decoration: style.roundedImage('assets/images/user5.jpg'),
                                                    ),
                                                    Expanded(
                                                        child: Container(
                                                            margin: EdgeInsets.only(right: 16),
                                                            child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                    Text('Devin Stokes',
                                                                        style: TextStyle(
                                                                            fontSize: 16,
                                                                            fontFamily: 'medium'
                                                                        ),
                                                                    ),
                                                                    SizedBox(height: 5),
                                                                    Row(
                                                                        children: [
                                                                            Icon(Icons.star, color: style.appColor, size: 20),
                                                                            Text('4.5')
                                                                        ],
                                                                    )
                                                                ],
                                                            ),
                                                        )
                                                    ),
                                                    Row(
                                                        children: [
                                                            InkWell(
                                                                onTap: () {},
                                                                child: Container(
                                                                    width: 60,
                                                                    height: 50,
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromARGB(255, 1, 149, 255),
                                                                        borderRadius: BorderRadius.all(
                                                                            Radius.circular(5)
                                                                        )
                                                                    ),
                                                                    child: Icon(Icons.chat, color: Colors.white),
                                                                )
                                                            ),
                                                            SizedBox(width: 12),
                                                            InkWell(
                                                                onTap: () {},
                                                                child: Container(
                                                                    width: 60,
                                                                    height: 50,
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromARGB(255, 0, 224, 151),
                                                                        borderRadius: BorderRadius.all(
                                                                            Radius.circular(5)
                                                                        )
                                                                    ),
                                                                    child: Icon(Icons.call, color: Colors.white),
                                                                )
                                                            ),
                                                        ],
                                                    )
                                                ],
                                            ),
                                        ),

                                        Container(
                                            padding: EdgeInsets.all(16),
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                    Text('HOW IS YOUR SHIPPER?',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontFamily: 'semi-bold'
                                                        ),
                                                    ),
                                                    SizedBox(height: 16),
                                                    Text('Your feedback will help us improve shipping experiance.',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: style.appGreyText
                                                        ),
                                                    ),
                                                    SizedBox(height: 24),
                                                    Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                            Icon(Icons.star, color: style.appGreyText, size: 36),
                                                            Icon(Icons.star, color: style.appGreyText, size: 36),
                                                            Icon(Icons.star, color: style.appGreyText, size: 36),
                                                            Icon(Icons.star, color: style.appGreyText, size: 36),
                                                            Icon(Icons.star, color: style.appGreyText, size: 36),
                                                        ],
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            )
                        ),
                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    borderBottom() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(255, 204, 209, 226),
                    width: 1
                )
            )
        );
    }

}
