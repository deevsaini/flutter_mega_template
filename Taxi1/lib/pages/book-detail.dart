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
import 'package:taxibookflutter/pages/driver-detail.dart';
import 'package:taxibookflutter/pages/fare-detail.dart';
import 'package:taxibookflutter/pages/payment-method.dart';
import 'package:taxibookflutter/pages/promo-code.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../helper/style.dart' as style;

class BookDetailPage extends StatefulWidget {
    BookDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Book Detail';

    @override
    State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {

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
                            height: deviceHeight-300,
                            child: GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: _kGooglePlex,
                                onMapCreated: (GoogleMapController controller) {
                                    _controller.complete(controller);
                                },
                            ),
                        ),
                        Positioned(
                            left: 0,
                            top: deviceHeight-320,
                            child: Container(
                                height: 320,
                                width: deviceWidth,
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.only(
                                //         topLeft: Radius.circular(20),
                                //         topRight: Radius.circular(20),
                                //     ),
                                //     color: Colors.white
                                // ),
                                decoration: style.radiusContainer(),
                                child: Column(
                                    children: [
                                        _buildCarContainer(),
                                        Container(
                                            color: Color.fromARGB(255, 245, 245, 245),
                                            padding: EdgeInsets.all(16),
                                            child: InkWell(
                                                onTap: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (BuildContext context) {
                                                            return FairDetailPage();
                                                        }
                                                    );
                                                },
                                                child: Column(
                                                    children: [
                                                        Text('LKR 500-550',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontFamily: 'medium'
                                                            ),
                                                        ),

                                                        RichText(
                                                            textAlign: TextAlign.center,
                                                            text: TextSpan(
                                                                text: 'Note: ',
                                                                style: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'medium'),
                                                                children: <TextSpan>[
                                                                      TextSpan(text: 'This is an approximate, Actual cost may be different due to traffic and waiting time',
                                                                          style: TextStyle(fontFamily: 'regular')
                                                                      ),
                                                                ],
                                                            ),
                                                        )

                                                      ],
                                                ),
                                            ),
                                        ),
                                        _buildButtonContainer(),

                                        Container(
                                            width: double.infinity,
                                            height: 56,
                                            child: ElevatedButton(
                                                style: yellowButton(),
                                                onPressed: () {
                                                    showModalBottomSheet(
                                                        context: context,
                                                        isScrollControlled: true,
                                                        backgroundColor: Colors.transparent,
                                                        builder: (context) => Container(
                                                            height: MediaQuery.of(context).size.height * 0.75,
                                                            padding: EdgeInsets.only(top: 16),
                                                            decoration: style.radiusContainer(),
                                                            child: DriverDetailPage(),
                                                        ),
                                                    );
                                                },
                                                child: Text('Book Now',
                                                    style: buttonText(),
                                                ),
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

    Widget _buildCarContainer() {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white
            ),
            child: Row(
                children: List.generate(carType.length, (index) {
                    return Expanded(
                        child: InkWell(
                            onTap: () {
                                setState(() {
                                    type = index;
                                });
                            },
                            child: Container(
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
                                            width: double.infinity,
                                            height: 50,
                                            child: Image(
                                                image: index == type ? AssetImage(carType[index].img1) : AssetImage(carType[index].img2),
                                                width: 50,
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        )
                    );
                }),
            ),
        );
    }

    Widget _buildButtonContainer() {
        return Container(
            child: Row(
                children: [
                    Expanded(
                        child: Container(
                            height: 56,
                            child: ElevatedButton(
                                style: greyButton(),
                                onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                            return PaymentMethodPage();
                                        }
                                    );
                                },
                                child: Text('Cash',
                                    style: buttonText(),
                                ),
                            ),
                        )
                    ),
                    Expanded(
                        child: Container(
                            height: 56,
                            child: ElevatedButton(
                                style: greyButton(),
                                onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                            return PromoCodePage();
                                        }
                                    );
                                },
                                child: Text('Promo Code',
                                    style: buttonText(),
                                ),
                            ),
                        )
                    ),
                ],
            ),
        );
    }

    greyButton() {
        return ElevatedButton.styleFrom(
            primary: Colors.grey[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)
            ),
            elevation: 0,
        );
    }

    yellowButton() {
        return ElevatedButton.styleFrom(
            primary: style.appColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)
            ),
            elevation: 0,
        );
    }

    buttonText() {
        return TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'medium'
        );
    }
}

class Item {
    const Item(this.name, this.img1, this.img2);
    final String name;
    final String img1;
    final String img2;
}