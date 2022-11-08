/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/ride_detail.dart';
import '../components/styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideOngoing extends StatefulWidget {
  static const String id = 'RideOngoing';

  const RideOngoing({Key? key}) : super(key: key);

  @override
  _RideOngoingState createState() => _RideOngoingState();
}

class _RideOngoingState extends State<RideOngoing> {
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
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Ongoing Ride',
          style: TextStyle(color: Colors.black, fontFamily: "semibold"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBody() {
    return Container(
        child: Container(
      height: MediaQuery.of(context).size.height * 1,
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition:
            CameraPosition(target: LatLng(21.5397106, 71.8215543), zoom: 15),
      ),
    ));
  }

  Widget _buildBottomNav() {
    return Container(
        height: 110,
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("John Snowborn",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "bold",
                          color: Colors.black)),
                  SizedBox(height: 5),
                  Text("City Honda",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "semibold",
                          color: Colors.black54)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: appColor, size: 14),
                      SizedBox(width: 5),
                      Text("5",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "bold",
                              color: appColor)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: ElevatedButton(
                  child: Text("On Going Ride",
                      style: TextStyle(fontSize: 14, fontFamily: 'semibold')),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RideDetails()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: appColor,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                  )),
            ),
          ],
        ));
  }
}
