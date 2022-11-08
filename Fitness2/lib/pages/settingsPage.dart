/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/editProfilePage.dart';
import 'package:fitness_app/pages/loginPage.dart';
import 'package:fitness_app/pages/termAndConditionsPage.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class settingsPage extends StatefulWidget {
  settingsPage({Key? key}) : super(key: key);

  static const String pageId = 'settingsPage';

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF2D2D39),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF2D2D39),
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Settings',
        style: TextStyle(fontFamily: 'bold', color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTitle('Profile'),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => editProfilePage()));
                },
                child: _buildContent(
                    Icon(Icons.person_outline, color: style.appColor),
                    'Edit Profile'),
              ),
              _buildContent(Icon(Icons.email_outlined, color: style.appColor),
                  'My Email'),
              _buildContent(
                  Icon(Icons.password_outlined, color: style.appColor),
                  'Reset Password'),
              _buildContent(
                  Icon(Icons.location_on_outlined, color: style.appColor),
                  'My Location'),
              _buildContent(
                  Icon(Icons.notifications_outlined, color: style.appColor),
                  'Notification'),
              SizedBox(
                height: 50,
              ),
              _buildTitle('Support'),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => termsAndConditions()));
                },
                child: _buildContent(
                    Icon(Icons.security_outlined, color: style.appColor),
                    'Terms & Conditions'),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginPage()));
                },
                child: _buildContent(
                    Icon(Icons.logout_outlined, color: style.appColor),
                    'Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(icn, txt) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade700),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: icn,
          ),
          Text(
            '$txt',
            style: TextStyle(
                fontFamily: 'bold', fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Text(
          '$txt',
          style:
              TextStyle(fontFamily: 'bold', fontSize: 15, color: Colors.white),
        ),
      ]),
    );
  }
}
