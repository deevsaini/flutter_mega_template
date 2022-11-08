/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontFamily: 'semibold'),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          _buildProfilePic(),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "John Doe",
                style: TextStyle(fontFamily: "semibold", fontSize: 18),
              )),
          SizedBox(height: 20),
          _buildProfileMenu(
            "My Account",
            Icons.person,
          ),
          _buildProfileMenu(
            "Notifications",
            Icons.notifications,
          ),
          _buildProfileMenu(
            "Settings",
            Icons.settings,
          ),
          _buildProfileMenu(
            "Help Center",
            Icons.call,
          ),
          _buildProfileMenu(
            "Log Out",
            Icons.logout,
          ),
        ],
      ),
    );
  }

  Widget _buildProfileMenu(text, icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black54,
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: style.background,
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: TextStyle(fontFamily: "semibold", fontSize: 16),
            )),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePic() {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/2.png"),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 30,
              width: 30,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: style.background,
                ),
                onPressed: () {},
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black38,
                  size: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
