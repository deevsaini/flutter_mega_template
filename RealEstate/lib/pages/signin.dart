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
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/forgotPassword.dart';
import 'package:realestate/pages/home.dart';
import 'package:realestate/pages/signup.dart';

class signin extends StatefulWidget {
  signin({Key? key}) : super(key: key);

  static const String page_id = "Sign In";

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Have not any account?',
            style: TextStyle(fontFamily: 'regular', color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: ' Sign up',
                  style: TextStyle(
                    fontFamily: 'medium',
                    color: Colors.amber,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signup()));
                    }),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        'Sign in',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back!',
            style: TextStyle(
                color: appColor, fontSize: 18, fontFamily: 'semi-bold'),
          ),
          Text('Sign in to continue'),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: simpleInputText(
              'jaydeep@gmail.com',
              Icon(
                Icons.email,
                color: appColor,
              ),
            ),
          ),
          TextField(
            decoration: simpleInputText(
              'Password',
              Icon(
                Icons.lock,
                color: appColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    activeColor: appColor,
                    value: this.switchValue,
                    onChanged: (bool? value) {
                      setState(() {
                        this.switchValue = value!;
                      });
                    },
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
                  style: TextStyle(color: appColor),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
            child: Text(
              'Sign in',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            style: greenButton(),
          )
        ],
      ),
    );
  }
}
