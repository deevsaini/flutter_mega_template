/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';

class videoCall extends StatefulWidget {
  videoCall({Key? key}) : super(key: key);

  static const String page_id = "Video Call";

  @override
  _videoCallState createState() => _videoCallState();
}

class _videoCallState extends State<videoCall> {
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
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Jaydeep Hirani',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/girl.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 10),
              height: 130,
              width: 110,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Text(
                    '01:20:59',
                    style: TextStyle(
                        fontFamily: 'medium', fontSize: 16, color: appColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      button(Icons.chat, appColor),
                      button(Icons.wifi_calling_3_outlined, Colors.red),
                      button(Icons.camera_alt, Colors.amber),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget button(icon, color) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
