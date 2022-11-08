/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/home.dart';
import 'package:parkme/widget/elevated_button.dart';
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
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black87),
        elevation: 0,
      ),
      body: _buildBody(),
      bottomNavigationBar: bottomBtn(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                          radius: 45,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                border:
                                    Border.all(width: 3, color: Colors.white)),
                            child: Icon(Icons.edit,
                                size: 14, color: Colors.black45),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                textField('Full name', Icons.done),
                textField('Email', Icons.done),
                textField('Phone number', Icons.done),
                textField('Password', Icons.done),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bottomBtn() {
    return Container(
        padding: EdgeInsets.all(30),
        child: MyElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            text: 'Save'));
  }
}
