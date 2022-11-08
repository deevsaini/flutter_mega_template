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
import 'package:salon/pages/tabs.dart';

class passResetSuccess extends StatefulWidget {
  passResetSuccess({Key? key}) : super(key: key);

  static const String page_id = "Password Reset Success";

  @override
  _passResetSuccessState createState() => _passResetSuccessState();
}

class _passResetSuccessState extends State<passResetSuccess> {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.email_outlined,
                size: 60,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Password Reset',
                style: style.boldText(),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Your password has been reset successfully',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => tabs()));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF6D5AE7),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
