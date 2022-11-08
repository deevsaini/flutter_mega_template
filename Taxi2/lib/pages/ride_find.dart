/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/ride_select.dart';
import '../components/styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideFind extends StatefulWidget {
  static const String id = 'RideFind';

  const RideFind({Key? key}) : super(key: key);

  @override
  _RideFindState createState() => _RideFindState();
}

class _RideFindState extends State<RideFind> with TickerProviderStateMixin {
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

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Find for You',
          style: TextStyle(color: Colors.black, fontFamily: "semi-bold"),
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
      height: MediaQuery.of(context).size.height * 1,
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition:
            CameraPosition(target: LatLng(21.5397106, 71.8215543), zoom: 15),
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
        height: 160,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Requesting Ride",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "semibold",
                      color: Colors.black)),
            ),
            LinearProgressIndicator(
              value: controller.value,
              // valueColor: AlwaysStoppedAnimation(appColor),
              color: appColor,
              backgroundColor: Colors.black12,
              semanticsLabel: 'Linear progress indicator',
            ),
            Container(
              padding: EdgeInsets.only(top: 16),
              width: double.infinity,
              child: ElevatedButton(
                child: btnText("Cancel Ride"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RideSelect()));
                },
                style: btnStyle(),
              ),
            ),
          ],
        ));
  }
}
