/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/signin.dart';
import 'package:elearn/pages/verification.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  static const String page_id = "Sign Up";

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Already have an account ?',
            style: TextStyle(
              fontFamily: 'regular',
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Sign In',
                style: TextStyle(
                    fontFamily: 'medium', color: appColor, fontSize: 14),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new signin()));
                  },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create Account',
            style: TextStyle(fontFamily: 'medium', fontSize: 24),
          ),
          Text('Create an account to continue'),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: inputText('Email', 'jaydeep@gmail.com'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: inputIconText('Password'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: inputIconText('Verify Password'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: inputIconText('Exam Preparation level'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'You make change in practice',
            style: TextStyle(color: appColor),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => verification()));
            },
            child: Text(
              'Continue',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            style: blueButton(),
          ),
        ],
      ),
    );
  }
}
