/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class enableLocation extends StatefulWidget {
  enableLocation({Key? key}) : super(key: key);

  static const String page_id = "Enable Location";

  @override
  _enableLocationState createState() => _enableLocationState();
}

class _enableLocationState extends State<enableLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(24),
    );
  }
}
