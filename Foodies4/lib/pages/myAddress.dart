/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class myAddress extends StatefulWidget {
  myAddress({Key? key}) : super(key: key);

  static const String page_id = "My Address";

  @override
  _myAddressState createState() => _myAddressState();
}

class _myAddressState extends State<myAddress> {
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Save'),
          style: style.simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'My Address',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Flexible(
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Search Address',
                prefixIcon: Icon(Icons.search, color: Colors.black54),
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return selectLocation();
                  });
            },
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 5,
                ),
                Text('9 st, New York City')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget selectLocation() {
    return Container(
      height: 350,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Location',
              style: style.headText(),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your Location',
              style: TextStyle(color: style.greyColor),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('9 st, New York City')
                  ],
                ),
                Text(
                  'Change',
                  style: TextStyle(color: style.secondaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Tag This Location For Later',
              style: TextStyle(color: style.greyColor),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                  decoration: BoxDecoration(
                      color: style.secondaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                  decoration: BoxDecoration(
                      color: style.greyColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Work',
                    style: TextStyle(color: style.greyColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                  decoration: BoxDecoration(
                      color: style.greyColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Other',
                    style: TextStyle(color: style.greyColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Save Address'),
              style: style.simpleButton(),
            ),
          ],
        ),
      ),
    );
  }
}
