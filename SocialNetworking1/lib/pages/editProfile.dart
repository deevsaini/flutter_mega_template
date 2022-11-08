/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:socialnetworking/helper/style.dart';

class editProfile extends StatefulWidget {
  editProfile({Key? key}) : super(key: key);

  static const String page_id = "Edit Profile";

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
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
        'Edit Profile',
        style: whiteHeadText(),
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 2, color: appColor),
                    image: DecorationImage(
                        image: AssetImage('assets/images/image2.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Change Profile Picture',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          rowContainer('User Name', 'gilestposter'),
          rowContainer('Your Email', 'giles@gmail.com'),
          rowContainer('Phone', '+91 9090 225 225'),
          rowContainer('Gender', 'Male'),
          rowContainer('Date of Birth', '05/02/1995'),
        ],
      ),
    );
  }

  Widget rowContainer(left, right) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            right,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
