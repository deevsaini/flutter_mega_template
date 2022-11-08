/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/add_properties_start.dart';
import 'package:home/pages/edit_profile.dart';
import 'package:home/pages/profile_listing_status.dart';
import '../components/styles.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isShare = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Profile', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
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
                      Image.asset(
                        'assets/images/home.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 240,
                      ),
                      SizedBox(height: 40),
                      _buildProfileBtns(),
                    ],
                  ),
                  Positioned(
                      top: 200,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildProfilePic()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildProfileBtns() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          blackBoldText('Vivian Richardson'),
          greyText('Premium Host'),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),
            child: Column(
              children: [
                _buildProfileMenu("Add Property", Icons.home, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddPropertyStart()));
                }),
                _buildProfileMenu("Status Listing", Icons.list, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileListingStatus()));
                }),
                _buildProfileMenu("Edit Profile", Icons.person, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfile()));
                }),
                _buildProfileMenu("Premium Security", Icons.security, () {}),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: backgroundColor,
                          child: Icon(Icons.logout, color: Colors.red)),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontFamily: 'medium'),
                      )),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.red,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfilePic() {
    return SizedBox(
      height: 80,
      width: 80,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: appColor,
              radius: 46,
              backgroundImage: AssetImage('assets/images/man.png'),
            ),
          ),
          Positioned(
              bottom: 0,
              right: MediaQuery.of(context).size.width * 0.4,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: appColor2,
                child: Icon(Icons.star, color: Colors.white, size: 10),
              ))
        ],
      ),
    );
  }

  Widget _buildProfileMenu(text, icon, ontap) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.white,
      ),
      onPressed: ontap,
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: backgroundColor,
              child: Icon(icon, color: appColor)),
          SizedBox(width: 20),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              blackText(text),
              greyTextSmall('Lorem ipsum dolor amet')
            ],
          )),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
