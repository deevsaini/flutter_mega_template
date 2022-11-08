/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/helper/style.dart' as style;
import 'package:food2/pages/latestDeals.dart';
import 'package:food2/pages/notifications.dart';

class account extends StatefulWidget {
  account({Key? key}) : super(key: key);

  static const String page_id = 'Account';

  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
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
      centerTitle: true,
      title: Text(
        'Profile',
        style: style.headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jaydeep Hirani',
                      style: style.headText(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'View Account',
                      style: TextStyle(color: style.appColor),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Settings',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          settingContainer(() {}, 'Your favourites'),
          settingContainer(() {}, 'Payment'),
          settingContainer(() {}, 'Help Center'),
          settingContainer(() {}, 'Voucher'),
          settingContainer(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => notification()));
          }, 'Notifications'),
          settingContainer(() {}, 'Supports'),
          settingContainer(() {}, 'About'),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
            child: InkWell(
              // onTap: route,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign out',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'medium',
                        color: style.appColor),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget settingContainer(route, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: InkWell(
        onTap: route,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16, fontFamily: 'medium'),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
