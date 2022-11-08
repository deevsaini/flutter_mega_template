/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ride/helper/style.dart';
import 'package:ride/pages/signIn.dart';
import 'package:ride/pages/verification.dart';

class signUp extends StatefulWidget {
  signUp({Key? key}) : super(key: key);

  static const String page_id = "Sign Up";

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Don\'t have an account ? ',
            style: TextStyle(
                fontSize: 16, fontFamily: 'regular', color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: ' Sign In',
                  style: TextStyle(
                      fontFamily: 'semi-bold', fontSize: 16, color: styleColor),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signIn()));
                    }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appColor,
                  styleColor,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'semi-bold',
                        color: styleColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Email',
                    style: styleheadText(),
                  ),
                  TextField(
                    decoration: simpleInputText('jaydeephirani@gmail.com'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: styleheadText(),
                  ),
                  TextField(
                    decoration: simpleInputText('Enter Password'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Confirm Password',
                    style: styleheadText(),
                  ),
                  TextField(
                    decoration: simpleInputText('Confirm Password'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  gradientButton(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => verification()));
                  }, 'SIGN UP')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
