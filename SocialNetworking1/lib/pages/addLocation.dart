/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:socialnetworking/helper/style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:socialnetworking/pages/tabs.dart';

class addLocation extends StatefulWidget {
  addLocation({Key? key}) : super(key: key);

  static const String page_id = "Add Location";

  @override
  State<addLocation> createState() => _addLocationState();
}

class _addLocationState extends State<addLocation> {
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
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text(
        'Add Location',
        style: whiteHeadText(),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            },
            child: Text(
              'Publish',
              style: TextStyle(color: Colors.white),
            ))
      ],
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: appColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Use my current location'),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                selectLocation('Leesburg, Virginia(VA),20176'),
                selectLocation('Afton, Virginia(VA),10176'),
                selectLocation('Pebble Beach, California,74332'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget selectLocation(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(text),
          )
        ],
      ),
    );
  }
}
