/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: appColor,
        elevation: 0,
        centerTitle: true,
        title: Text("Profile",
            style: TextStyle(
              fontFamily: 'medium',
              color: Colors.white,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildProfile(),
                      SizedBox(height: 80),
                      _buildProfileDtl()
                    ],
                  ),
                  Positioned(
                      top: 120,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildBalanceDtl()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
      color: appColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/man.png'),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  )),
              SizedBox(height: 6),
              Text("Jonathan Swift",
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 18,
                    color: Colors.white,
                  )),
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceDtl() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              new BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
              )
            ]),
        child: Column(
          children: [
            Column(
              children: [
                Text("My Balance:",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    )),
                SizedBox(height: 8),
                Text("\$4,520.12",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'medium',
                      fontSize: 24,
                    )),
              ],
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      greyText("Today Spent:"),
                      SizedBox(width: 5),
                      blackText("\$28.12"),
                    ],
                  ),
                  Row(
                    children: [
                      greyText("Daily Limit:"),
                      SizedBox(width: 5),
                      blackText("\$400"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDtl() {
    return Column(
      children: [
        _buildColmn('Name', "Jonathan Swift"),
        _buildColmn('Phone', "+21012455215"),
        _buildColmn('E-mail', "admin@initappz.com"),
        _buildColmn('Language', "English"),
        SettingLabel(Icons.notifications, "Notification"),
        SettingLabel(Icons.messenger_outline_rounded, "Support"),
        SettingLabel(Icons.lock_outline_rounded, "Edit PIN"),
        SettingLabel(Icons.security, "Security settings"),
      ],
    );
  }

  Widget _buildColmn(title, dtl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greyText(title),
              SizedBox(height: 6),
              blackText(dtl),
            ],
          ),
        ),
        Divider(thickness: 1, color: Colors.black26),
      ],
    );
  }

  SettingLabel(icn, lbl) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black12)),
      ),
      child: Row(
        children: [
          Icon(icn, color: appColor),
          SizedBox(width: 10),
          blackText(lbl),
        ],
      ),
    );
  }
}
