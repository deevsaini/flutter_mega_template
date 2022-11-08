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
import 'package:socialnetworking/pages/forgotPassword.dart';
import 'package:socialnetworking/pages/signup.dart';
import 'package:socialnetworking/pages/tabs.dart';

class signin extends StatefulWidget {
  signin({Key? key}) : super(key: key);

  static const String page_id = "Sign In";

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
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
        'Sign In',
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
              'Sign In with',
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
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              },
              child: Text(
                'Sign In',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: blueButton(),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: 'need an account ?',
                style: TextStyle(
                  fontFamily: 'regular',
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign Up',
                    style: TextStyle(
                        fontFamily: 'medium', color: appColor, fontSize: 14),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new signup()));
                      },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: 'forgot your password ?',
                style: TextStyle(
                  fontFamily: 'regular',
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Retrive',
                    style: TextStyle(
                        fontFamily: 'medium', color: appColor, fontSize: 14),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new forgotPassword()));
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
