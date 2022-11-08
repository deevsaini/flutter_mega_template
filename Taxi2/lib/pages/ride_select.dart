/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/ride_ongoing.dart';
import '../components/styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideSelect extends StatefulWidget {
  static const String id = 'RideSelect';

  const RideSelect({Key? key}) : super(key: key);

  @override
  _RideSelectState createState() => _RideSelectState();
}

class _RideSelectState extends State<RideSelect> {
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

  List<Item> ServiceList = <Item>[
    const Item('Pickup in 5 min', 'standard', '\$55.00'),
    const Item('Pickup in 15 min', 'premium', '\$10.00'),
    const Item('Pickup in 25 min', 'local', '\$20.00'),
    const Item('Pickup in 15 min', 'standard', '\$60.00'),
    const Item('Pickup in 5 min', 'standard', '\$55.00'),
    const Item('Pickup in 5 min', 'standard', '\$55.00'),
  ];
  int tabID = 1;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Select Ride',
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Text("Current location",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "semibold",
                                color: Colors.black)),
                        Expanded(
                            child: Icon(Icons.arrow_forward,
                                size: 18, color: appColor)),
                        Text("Hariram Bapa",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "semibold",
                                color: Colors.black)),
                      ],
                    ),
                  )
                ],
              )),
          Container(
            height: 300,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSelect(context, e) {
    return InkWell(
      onTap: () {
        setState(() {
          tabID = e.hashCode;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: segmentDecoration(e.hashCode),
        child: Row(
          children: [
            Icon(Icons.circle_outlined,
                size: 14, color: tabID == e.hashCode ? Colors.white : appColor),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.time, style: segmentText(e.hashCode)),
                  SizedBox(height: 5),
                  Text(e.type, style: segmentText(e.hashCode)),
                ],
              ),
            ),
            Text(e.price, style: segmentText(e.hashCode)),
          ],
        ),
      ),
    );
  }

  segmentDecoration(index) {
    return BoxDecoration(
      color: tabID == index.hashCode ? appColor : Colors.transparent,
    );
  }

  segmentText(index) {
    return TextStyle(
        fontFamily: tabID == index.hashCode ? 'bold' : 'semibold',
        color: tabID == index.hashCode ? Colors.white : Colors.grey);
  }

  Widget _buildBottomNav() {
    return Container(
        color: Colors.white,
        height: 300,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: backgroundColor,
                        radius: 24,
                        child: Image.asset(
                          "assets/images/taxi.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text("Waving Ride",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "bold",
                              color: Colors.black)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Get there by",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "bold",
                              color: appColor)),
                      Text("6:35 PM",
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
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: ServiceList.map((e) {
                    return _buildSelect(context, e);
                  }).toList(),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: double.infinity,
              child: ElevatedButton(
                child: btnText("Select Ride"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RideOngoing()));
                },
                style: btnStyle(),
              ),
            ),
          ],
        ));
  }
}

class Item {
  const Item(
    this.time,
    this.type,
    this.price,
  );
  final String time;
  final String type;
  final String price;
}
