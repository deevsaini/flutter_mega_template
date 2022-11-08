/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/payment.dart';
import 'package:parkme/widget/NavBar.dart';
import 'package:parkme/widget/elevated_button.dart';
import '../components/styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EndParking extends StatefulWidget {
  static const String id = 'EndParking';

  const EndParking({Key? key}) : super(key: key);

  @override
  _EndParkingState createState() => _EndParkingState();
}

class _EndParkingState extends State<EndParking> {
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
      drawer: NavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.black87),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 24,
              child: Icon(
                Icons.near_me,
                color: appColor,
                size: 24,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: backgroundColor,
      body: _buildBody(),
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
            padding: EdgeInsets.only(top: 60, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SearchBox('Whrere are you go?'),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: MyElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Payment()));
                        },
                        text: 'End Parking'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
