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
import 'package:socialnetworking/pages/privacyPolicy.dart';

class settings extends StatefulWidget {
  settings({Key? key}) : super(key: key);

  static const String page_id = "Settings";

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
        'Settings',
        style: whiteHeadText(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heading('Invite'),
            imageContainer('assets/images/fb.png', '32 Facebook Friends'),
            heading('Follow People'),
            imageContainer('assets/images/twitter.png', '115 Twitter Folowers'),
            imageContainer('assets/images/insta.png', 'Connect with instagram'),
            heading('Account'),
            rowContainer('Push Notification'),
            rowContainer('Blocked Users'),
            rowContainer('Linked Accounts'),
            rowContainer('Language'),
            rowContainer('Search History'),
            rowContainer('Report a Problem'),
            SizedBox(
              height: 10,
            ),
            heading('Support'),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => privacyPolicy()));
              },
              child: Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Log Out',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading(head) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        head,
        style: headText(),
      ),
    );
  }

  Widget imageContainer(image, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget rowContainer(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
