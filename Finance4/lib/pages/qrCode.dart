/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class qrCode extends StatefulWidget {
  qrCode({Key? key}) : super(key: key);

  static const String page_id = "Qr Code";

  @override
  _qrCodeState createState() => _qrCodeState();
}

class _qrCodeState extends State<qrCode> {
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
      backgroundColor: style.appColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: style.appColor),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 42,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Jaydeep Hirani',
            style: TextStyle(
                color: Colors.white, fontFamily: 'semi-bold', fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'jaydeephirani@gmail.com',
            style: TextStyle(
                color: Colors.white54, fontFamily: 'regular', fontSize: 14),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 330,
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Text(
                  'QR Code',
                  style: style.darkText(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Scan this for recieving transaction',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/qrcode.png',
                  height: 220,
                  width: 220,
                  fit: BoxFit.cover,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
