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
import 'package:salon/pages/phoneVerification.dart';

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
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Already have an account?',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontFamily: 'regular'),
            children: <TextSpan>[
              TextSpan(
                  text: 'Sign in',
                  style: TextStyle(
                      fontFamily: 'semi-bold', color: style.appColor)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'bold',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create a new account',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'medium',
                      color: style.greyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: style.simpleInputIconText(
                      'Name',
                      Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: style.simpleInputIconText(
                      'Email',
                      Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: style.simpleInputIconText(
                      'Password',
                      Icon(Icons.lock_outline),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontFamily: 'semi-bold'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => phoneVerification()));
                    },
                    style: style.simpleButton(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            'By continuing Sign up ypu agree to the following ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'regular'),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Terms & Conditions',
                            style: TextStyle(
                                fontFamily: 'semi-bold', color: style.appColor),
                          ),
                          TextSpan(
                            text: ' without reservation',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'regular'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
