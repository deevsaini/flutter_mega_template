/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/bookAppointmentPage.dart';
import 'package:doctor_marketplace_app/pages/profilePage.dart';
import 'package:doctor_marketplace_app/pages/settingsPage.dart';
import 'package:doctor_marketplace_app/pages/signinPage.dart';
import 'package:flutter/material.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class menuPage extends StatefulWidget {
  menuPage({Key? key}) : super(key: key);

  static const String pageId = 'menuPage';

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: style.appColor,
              ),
              child: Column(
                children: [
                  _buildContent('My Appointment', Icons.book_online, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => bookAppointmentPage()));
                  }),
                  _buildContent('Profile', Icons.person, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profilePage()));
                  }),
                  _buildContent('Settings', Icons.settings, () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => settingsPage()));
                  }),
                  _buildContent('Logout', Icons.logout, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signinPage()));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(txt, icn, onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white12)),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      icn,
                      color: style.appColor,
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '$txt',
                      style: TextStyle(
                          fontFamily: 'bold',
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
