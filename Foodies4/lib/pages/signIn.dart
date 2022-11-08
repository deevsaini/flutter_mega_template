/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/forgotPassword.dart';
import 'package:fooddoor/pages/signUp.dart';
import 'package:fooddoor/pages/tabs.dart';

class signIn extends StatefulWidget {
  signIn({Key? key}) : super(key: key);

  static const String page_id = "Sign In";

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool _switchValue = true;

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
          'Sign In',
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
            'Welcome to',
            style: style.mediumText(),
          ),
          Text(
              'Enter your phone number or email \n address for sign in. Enjoy your food'),
          TextField(
            decoration: style.simpleInputIconText(
              'Username',
              Icon(Icons.person_outlined),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: style.simpleInputIconText(
              'Password',
              Icon(Icons.lock_outline),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(
                      value: _switchValue,
                      activeColor: style.appColor,
                      onChanged: (bool value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  Text('Remember Me')
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => forgotPassword())));
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: style.appColor),
                ),
              )
            ],
          ),
          ElevatedButton(
            child: const Text(
              "Sign In",
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new tabs()));
            },
            style: style.simpleButton(),
          ),
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Don\'t have account?',
                style: TextStyle(fontFamily: 'regular', color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'SignUp',
                    style: TextStyle(
                      fontFamily: 'medium',
                      color: style.appColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new signUp()));
                      },
                  ),
                ],
              ),
            ),
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
