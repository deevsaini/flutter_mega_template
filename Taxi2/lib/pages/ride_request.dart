/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/ride_find.dart';
import '../components/styles.dart';

class RideRequest extends StatefulWidget {
  static const String id = 'RideRequest';

  const RideRequest({Key? key}) : super(key: key);

  @override
  _RideRequestState createState() => _RideRequestState();
}

class _RideRequestState extends State<RideRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'For Me',
          style: TextStyle(color: Colors.black, fontFamily: "semi-bold"),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor,
        child: Icon(Icons.chevron_right),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RideFind()));
        },
      ),
    );
  }

  Widget _buildBody() {
    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            _buildTextField("Origin"),
            SizedBox(height: 16),
            _buildTextField("Where to ?"),
            SizedBox(height: 30),
            _buildText("saved Places"),
            Divider(thickness: 1, color: Colors.black12),
            _buildText("Set location on map"),
            Divider(thickness: 1, color: Colors.black12),
            _buildText("Enter destination later"),
            Divider(thickness: 1, color: Colors.black12),
          ],
        ));
  }

  Widget _buildTextField(hint) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.black26,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: appColor,
          ),
          hintText: hint,
          fillColor: Colors.white,
          filled: true,
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildText(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(txt,
          style: TextStyle(
              fontSize: 16, fontFamily: "semibold", color: Colors.black)),
    );
  }
}
