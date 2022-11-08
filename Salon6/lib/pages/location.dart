/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:salon/pages/CompleteSalonDetail.dart';

class location extends StatefulWidget {
  location({Key? key}) : super(key: key);

  static const String page_id = "Location";

  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
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
      automaticallyImplyLeading: false,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '6391 Elgin St Celina Deliware 10299',
            style: style.mediumText(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search by salons',
                    prefixIcon: Icon(Icons.search, color: Colors.black54),
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.segment,
                  color: Colors.black54,
                  size: 36,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 500,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                style.shopDetail(() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => completeSalonDetail()));
                }),
                style.shopDetail(() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => completeSalonDetail()));
                }),
                style.shopDetail(() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => completeSalonDetail()));
                }),
                style.shopDetail(() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => completeSalonDetail()));
                }),
                style.shopDetail(() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => completeSalonDetail()));
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
