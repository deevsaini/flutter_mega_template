/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/NavBar.dart';
import 'package:taxi/pages/ride_request.dart';
import '../components/styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      drawer: NavBar(),
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.more_vert_outlined),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
        backgroundColor: appColor,
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRideBtn(),
                SizedBox(height: 16),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RideRequest()));
                    },
                    child: _buildTimeBtn()),
                SizedBox(height: 16),
                _buildLocation(),
                SizedBox(height: 16),
                Text("Around you",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "bold",
                        color: Colors.black45)),
                SizedBox(height: 16),
                Container(
                    child: Container(
                  height: 220,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    markers: _markers,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(21.5397106, 71.8215543), zoom: 15),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: appColor,
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome to Waving",
              style: TextStyle(
                  fontSize: 26, color: Colors.white, fontFamily: "bold")),
          SizedBox(height: 8),
          Text("Happy to have you. Access to trips is just a top away.",
              style: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: "semibold")),
          SizedBox(height: 8),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text("Ride with Waving",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "semibold",
                          color: Colors.white)),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildRideBtn() {
    return Row(
      children: [
        Expanded(
            child: InkWell(
                onTap: () {},
                child: _buildBtnDecoration("assets/images/taxi.png", "Ride"))),
        SizedBox(width: 10),
        Expanded(
            child: _buildBtnDecoration("assets/images/taxi.png", "Intercity")),
      ],
    );
  }

  Widget _buildBtnDecoration(img, txt) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Image.asset(
            img,
            width: 80,
            height: 70,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Text(txt.toUpperCase(),
                style: TextStyle(
                    fontSize: 14, fontFamily: "bold", color: Colors.black54)),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeBtn() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Where to?",
              style: TextStyle(
                  fontSize: 14, fontFamily: "bold", color: Colors.black87)),
          Icon(
            Icons.access_time_filled,
            size: 20,
            color: appColor,
          ),
        ],
      ),
    );
  }

  Widget _buildLocation() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: backgroundColor,
            child: Icon(
              Icons.star,
              size: 20,
              color: appColor,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text("Choose a saved Place",
                style: TextStyle(
                    fontSize: 18, fontFamily: "bold", color: Colors.black87)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.chevron_right,
              size: 20,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
