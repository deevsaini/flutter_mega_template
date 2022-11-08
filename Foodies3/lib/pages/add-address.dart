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

class AddAddressPage extends StatefulWidget {
    AddAddressPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Add Address';

    @override
    State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {

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
                            height: deviceHeight-180,
                            color: style.appGrey,
//                            child: GoogleMap(
//                                mapType: MapType.normal,
//                                initialCameraPosition: _kGooglePlex,
//                                onMapCreated: (GoogleMapController controller) {
//                                    _controller.complete(controller);
//                                },
//                            ),
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
                            top: deviceHeight-200,
                            child: Container(
                                height: 200,
                                width: deviceWidth,
                                padding: EdgeInsets.all(16),
                                decoration: style.radiusContainer(),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                        Text('Type your address',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'medium'
                                            ),
                                        ),
                                        SizedBox(height: 16),
                                        TextField(
                                            decoration: style.textInputDecoration('Enter address'),
                                        ),
                                        SizedBox(height: 16),
                                        Container(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text('Add new address'),
                                                style: style.simpleButton(),
                                            ),
                                        )
                                    ],
                                ),
                            )
                        ),
                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }



}
