/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:music/helper/style.dart';
import 'package:music/pages/forgotpassword.dart';
import 'package:music/pages/home.dart';
import 'package:music/pages/signup.dart';
import 'package:music/pages/tabs.dart';

class signin extends StatefulWidget {
  signin({Key? key}) : super(key: key);

  static const String page_id = "Signin";

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: CircleAvatar(
                radius: 40,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [appColor, secondColor],
                      ),
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/zigzag.png',
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Sign in your account',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputText('Email'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: simpleInputText('Password'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => forgotPassword()));
                  },
                  child: Text(
                    'Forgot password?',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => tabs()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(fontFamily: 'medium'),
                ),
                style: simpleButton(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signup()));
              },
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                      color: Colors.white, fontSize: 14, fontFamily: 'regular'),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                          fontFamily: 'medium', fontSize: 16, color: appColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
