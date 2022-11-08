/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/forgotPassword.dart';
import 'package:flutter/material.dart';

class accCreateSuccess extends StatefulWidget {
  accCreateSuccess({Key? key}) : super(key: key);

  static const String page_id = "Account Create Success";

  @override
  _accCreateSuccessState createState() => _accCreateSuccessState();
}

class _accCreateSuccessState extends State<accCreateSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/success.png',
              fit: BoxFit.cover,
              height: 250,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Account Created \n Successfully!',
              style: headText(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => forgotPassword()));
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
          ],
        ),
      ),
    );
  }
}
