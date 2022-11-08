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
import 'package:socialnetworking/helper/style.dart';
import 'package:socialnetworking/pages/signin.dart';
import 'package:socialnetworking/pages/tabs.dart';

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
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        'Sign Up',
        style: whiteHeadText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign up with',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                          fontFamily: 'medium',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: appColor,
                      onPrimary: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Twitter',
                      style: TextStyle(
                          fontFamily: 'medium',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'OR',
              style: headText(),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: simpleInput('Email'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: simpleInput('Password'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: simpleInput('Confirm Password'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: blueButton(),
            ),
            SizedBox(
              height: 5,
            ),
            RichText(
              textAlign: TextAlign.start,
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
          ],
        ),
      ),
    );
  }
}
