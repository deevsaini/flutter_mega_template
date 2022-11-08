/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';
import 'package:spotify/pages/login.dart';
import 'package:spotify/pages/signup.dart';
import 'package:spotify/pages/tabs.dart';

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  static const String page_id = "Welcome";

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Millions of songs.',
                style: headText(),
              ),
              Text(
                'Free on Spotify.',
                style: headText(),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: Text(
                  'Sign up free',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: appButton(),
              ),
              SizedBox(
                height: 20,
              ),
              loginButton('assets/images/phone.png',
                  'Continue with phone number', () {}),
              loginButton(
                  'assets/images/google.png', 'Continue with Google', () {}),
              loginButton('assets/images/facebook.png',
                  'Continue with Facebook', () {}),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(fontFamily: 'medium', color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton(image, text, route) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.circular(30)),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Image.asset(
              image,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontFamily: 'medium'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
