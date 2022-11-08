/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/payment_modal.dart';
import 'package:learning/pages/your_courses.dart';
import 'package:learning/widget/text_btn.dart';
import '../components/styles.dart';

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
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontFamily: 'medium'),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: appColor2,
              radius: 72,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            SizedBox(height: 40),
            _buildBtn('Your Courses', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const YourCourses()));
            }),
            _buildBtn('Saved', () {}),
            _buildBtn('Payment', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentSuccessModal()));
            }),
            MyTextButton(onPressed: () {}, text: 'logout')
          ],
        ),
      ),
    );
  }

  Widget _buildBtn(text, onPressed) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.white,
          elevation: 0,
          shape: (RoundedRectangleBorder(
            side: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(16),
          )),
        ),
        child: blackHeadingSmall(text),
      ),
    );
  }
}
