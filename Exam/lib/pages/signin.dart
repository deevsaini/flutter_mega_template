/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/signup.dart';
import 'package:elearn/pages/tabs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Don\'t have an account ?',
            style: TextStyle(
              fontFamily: 'regular',
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Create Now',
                style: TextStyle(
                    fontFamily: 'medium', color: appColor, fontSize: 14),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => signup()));
                  },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(fontFamily: 'medium', fontSize: 24),
            ),
            Text('sign in to continue'),
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              },
              child: Text(
                'Sign in',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: blueButton(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black12),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Or',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.black12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                signInButtons('assets/images/google.png'),
                signInButtons('assets/images/facebook.png'),
                signInButtons('assets/images/twitter.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget signInButtons(icon) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(icon, width: 20.0, height: 20.0),
        ),
      ),
    );
  }
}
