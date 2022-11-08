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
import 'package:salon/pages/enterContactResetPass.dart';

class forgotPassword extends StatefulWidget {
  forgotPassword({Key? key}) : super(key: key);

  static const String page_id = "Forgot Password";

  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
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
                'Forgot password',
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
                'Select which contact details should we use to reset your password',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'medium',
                  color: style.greyTextColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                margin: EdgeInsets.only(bottom: 30),
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => enterContact()));
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.black87,
                    ),
                    horizontalTitleGap: 0,
                    title: Text(
                      'Via email',
                      style: TextStyle(
                          fontFamily: 'medium', color: Colors.black54),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                margin: EdgeInsets.only(bottom: 16),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.phone_android,
                      color: Colors.black87,
                    ),
                    horizontalTitleGap: 0,
                    title: Text(
                      'Via sms',
                      style: TextStyle(
                          fontFamily: 'medium', color: Colors.black54),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
