/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/tabs.dart';
import 'package:fitness/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class completeProfile extends StatefulWidget {
  completeProfile({Key? key}) : super(key: key);

  static const String page_id = "Complete Profile";

  @override
  _completeProfileState createState() => _completeProfileState();
}

class _completeProfileState extends State<completeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: _buildBottombar(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/yoga.webp',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Let\'s complete your profile',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'bold', fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It will help us to know more about you!',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'regular', fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: style.simpleInputIconText(
                'Choose Gender',
                Icon(Icons.people_outlined),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: style.simpleInputIconText(
                'Date of Birth',
                Icon(Icons.calendar_today),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: style.simpleInputIconText(
                'Your Weight',
                Icon(Icons.monitor_weight_outlined),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: style.simpleInputIconText(
                'Your Height',
                Icon(Icons.import_export_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottombar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10.0),
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => welcome()));
          },
          label: Text(
            'Next',
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          icon: const Icon(
            Icons.chevron_right_outlined,
          ),
          style: style.simpleButton(),
        ),
      ),
    );
  }
}
