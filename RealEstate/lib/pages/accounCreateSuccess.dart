/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/signin.dart';

class accountCreateSuccess extends StatefulWidget {
  accountCreateSuccess({Key? key}) : super(key: key);

  static const String page_id = "Account Create Success";

  @override
  _accountCreateSuccessState createState() => _accountCreateSuccessState();
}

class _accountCreateSuccessState extends State<accountCreateSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: appColor,
              child: Icon(
                Icons.check,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Account Created!',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'Your Account had been created successfully.',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Please sign in to use your account and enjoy',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signin()));
              },
              child: Text(
                'Tack me to sign in',
                style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
              ),
              style: greenButton(),
            )
          ],
        ),
      ),
    );
  }
}
