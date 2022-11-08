/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/passresetsuccess.dart';

class resetPassword extends StatefulWidget {
  resetPassword({Key? key}) : super(key: key);

  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Reset password',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'bold',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Please enter a new password',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'medium',
                  color: style.greyTextColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: style.simpleInputIconText(
                  'Enter a new password',
                  Icon(
                    Icons.lock_outline,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: style.simpleInputIconText(
                  'Confirm a new password',
                  Icon(
                    Icons.lock_outline,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const Text(
                  "Change  password",
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => passResetSuccess()));
                },
                style: style.simpleButton(),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
