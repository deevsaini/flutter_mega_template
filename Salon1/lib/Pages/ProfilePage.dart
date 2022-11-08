/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon1/Pages/EditProfilePage.dart';
import 'package:salon1/Pages/InviteFriendPage.dart';
import 'package:salon1/Pages/LoginPage.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  static const String PageId = 'ProfilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
      child: Column(
        children: [
          _buildProfile(),
          _buildList(Icons.payment, 'Payment Method', () {
            //
          }),
          _buildList(Icons.info, 'Account Informations', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfilePage()));
          }),
          _buildList(Icons.notifications, 'Notifications', () {
            //
          }),
          _buildList(Icons.people, 'Invite Friends', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InviteFriendPage()));
          }),
          _buildList(Icons.settings, 'Settings', () {
            //
          }),
          _buildList(Icons.book, 'Term of services', () {
            //
          }),
          _buildList(Icons.logout, 'Logout', () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          }),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child: FittedBox(
                      child: Image.asset('assets/images/p5.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                'Rahul Jograna',
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
              Text(
                'rahul@initappz.com',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildList(icn, txt, route) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: route,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFF78407),
                  child: Icon(
                    icn,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$txt',
                  style: TextStyle(fontFamily: 'semibold', fontSize: 17),
                ),
              ],
            ),
            Icon(Icons.arrow_right),
          ],
        ),
      ),
    );
  }
}
