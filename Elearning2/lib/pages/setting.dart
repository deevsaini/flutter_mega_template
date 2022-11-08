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

class Setting extends StatefulWidget {
  static const String id = 'Setting';

  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
          'Settings',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/course.png'),
                    fit: BoxFit.fitHeight),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: double.infinity,
              height: 90,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  elevation: 0,
                  shape: (RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(16),
                  )),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: appColor2,
                        radius: 18,
                        child: Icon(Icons.notifications,
                            color: Colors.white, size: 20)),
                    SizedBox(width: 10),
                    Expanded(
                      child: blackHeadingSmall('Notifications'),
                    ),
                    Icon(Icons.chevron_right, color: Colors.black38, size: 30)
                  ],
                ),
              ),
            ),
            blackHeadingSmall('Account information'),
            SizedBox(height: 16),
            _buildBtn('Name', Icons.person, 'Daenerys Targaryen', () {}),
            _buildBtn('Email', Icons.mail, 'admin@initappz.com', () {}),
            _buildBtn('Password', Icons.lock, 'changed 2 week ago', () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildBtn(title, icn, text, onPressed) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 90,
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
        child: Row(
          children: [
            CircleAvatar(
                backgroundColor: appColor2,
                radius: 18,
                child: Icon(icn, color: Colors.white, size: 20)),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [blackHeadingSmall(title), greyText(text)],
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.black38, size: 30)
          ],
        ),
      ),
    );
  }
}
