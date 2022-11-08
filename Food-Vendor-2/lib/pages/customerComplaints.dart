/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';

class customerComplaints extends StatefulWidget {
  customerComplaints({Key? key}) : super(key: key);

  static const String page_id = "Customer Complaints";

  @override
  _customerComplaintsState createState() => _customerComplaintsState();
}

class _customerComplaintsState extends State<customerComplaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Contact Details',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'No issue reported. Keep it up!',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'medium', fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
