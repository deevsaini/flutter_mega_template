/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medical/helper/style.dart';
import 'package:medical/pages/homeScreen.dart';

class signIn extends StatefulWidget {
  signIn({Key? key}) : super(key: key);

  static const String page_id = "Sign In";

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              secondColor,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 40,
                      child: Text(
                        'MD',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'semi-bold',
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'MAPELDOC',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'semi-bold',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: simpleInputIconText(
                  'Email',
                  Icon(Icons.person_outlined, color: Colors.white54),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: simpleInputIconText(
                  'Password',
                  Icon(
                    Icons.lock_outline,
                    color: Colors.white54,
                  ),
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homeScreen()));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: 16,
                      ),
                    ),
                    style: simpleButton(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Forgot Password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login via Facebook',
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: appColor,
                  onPrimary: Colors.white,
                  minimumSize: const Size.fromHeight(60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                      fontFamily: 'regular'),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                          fontFamily: 'semi-bold',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
