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
import 'package:quize/helper/style.dart';
import 'package:quize/pages/login.dart';
import 'package:quize/pages/tabs.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  static const String page_id = "Sign Up";

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Already have an account',
            style: TextStyle(
              fontFamily: 'regular',
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Login',
                style: TextStyle(
                    fontFamily: 'regular', color: appColor, fontSize: 14),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new login()));
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
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Hi!',
                style: TextStyle(fontSize: 24, fontFamily: 'semi-bold'),
              ),
              Text(
                'Create a new  account',
                style: TextStyle(fontSize: 14, fontFamily: 'regular'),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: simpleInput('Full Name', 'Jaydeep Hirani'),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: simpleInput('Email', 'jaydeep@gmail.com'),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: iconInput(
                  'Password',
                  'Password',
                  Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              simpleButton(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              }, 'Sign Up'),
              SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: 'By continuing you agree to',
                  style: TextStyle(
                    fontFamily: 'regular',
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Terms & conditions and Privacy Policy',
                      style: TextStyle(
                          fontFamily: 'regular', color: appColor, fontSize: 14),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          // Navigator.push(
                          //     context,
                          //     new MaterialPageRoute(
                          //         builder: (context) => new signup()));
                        },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text('Or'),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/fb.png',
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                fontFamily: 'medium',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.grey.shade300,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                                fontFamily: 'medium',
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.grey.shade300,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
