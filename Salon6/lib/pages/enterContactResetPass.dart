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
import 'package:salon/pages/sentCode.dart';

class enterContact extends StatefulWidget {
  enterContact({Key? key}) : super(key: key);

  static const String page_id = "Enter Contact";

  @override
  _enterContactState createState() => _enterContactState();
}

class _enterContactState extends State<enterContact> {
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
                'Please enter your email address to reset your password instruction',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'medium',
                  color: style.greyTextColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: style.simpleInputIconText(
                  'Email',
                  Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                child: const Text(
                  "Send link",
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => sentCode()));
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
