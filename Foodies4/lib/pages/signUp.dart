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
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/signIn.dart';

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
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Center(
        child: Text(
          'Sign Up',
          style: style.headText(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create Account',
            style: style.headText(),
          ),
          RichText(
            text: TextSpan(
              text: 'Enter your Name,Email and Password for Sign Up ',
              style: TextStyle(fontFamily: 'regular', color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: ' Already have account ?',
                  style: TextStyle(
                    fontFamily: 'medium',
                    color: style.appColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new signIn()));
                    },
                ),
              ],
            ),
          ),
          TextField(
            decoration: style.simpleInputIconText(
              'Username',
              Icon(Icons.person_outlined),
            ),
          ),
          TextField(
            decoration: style.simpleInputIconText(
              'Email address',
              Icon(Icons.email_outlined),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: style.simpleInputIconText(
              'Password',
              Icon(Icons.lock_outline),
            ),
          ),
          ElevatedButton(
            child: const Text(
              "Create Account",
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            onPressed: () {
              // Navigator.push(context,
              //     new MaterialPageRoute(builder: (context) => new signIn()));
            },
            style: style.simpleButton(),
          ),
          Center(
            child: Text('OR'),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.facebook_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Connect With Facebook',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.facebook_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Connect With Google',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
