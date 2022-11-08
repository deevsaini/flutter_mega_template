/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class ProfileSettingsPage extends StatefulWidget {
  ProfileSettingsPage({Key? key, Title? title}) : super(key: key);
  final String title = '';
  static const String page_id = 'Profile Settings';

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 103, 71, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 41, 132),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Profile Settings'),
        titleTextStyle: style.pageTitleText(),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(Icons.check, color: Colors.black),
      ),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 230.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 90)),
                        color: Color.fromARGB(255, 64, 41, 132)),
                  ),
                ),
                Positioned(
                    top: 160,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70,
                      child: CircleAvatar(
                        radius: 64,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                      ),
                    )),
              ],
            ),
            SizedBox(height: 80),
            Text(
              'Change Photo',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: style.textInputStyle(),
                    decoration: style.textInputDecoration('Name'),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Private Information',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 18,
                        color: Color.fromARGB(255, 51, 222, 246)),
                  ),
                  SizedBox(height: 24),
                  TextField(
                    style: style.textInputStyle(),
                    decoration: style.textInputDecoration('Email Address'),
                  ),
                  SizedBox(height: 24),
                  TextField(
                    style: style.textInputStyle(),
                    decoration: style.textInputDecoration('Phone Number'),
                  ),
                  SizedBox(height: 24),
                  TextField(
                    style: style.textInputStyle(),
                    decoration: style.textInputDecoration('Gender'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Item {
  Item(this.img, this.title);
  final String img;
  final String title;
}
