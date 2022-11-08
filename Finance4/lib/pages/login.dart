/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:banky/pages/register.dart';
import 'package:banky/pages/tabs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  static const String page_id = "Login";

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
            text: ' Don\'t have an account?',
            style: TextStyle(
                color: Colors.grey, fontSize: 14, fontFamily: 'medium'),
            children: <TextSpan>[
              TextSpan(
                text: 'Register',
                style:
                    TextStyle(fontFamily: 'semi-bold', color: style.appColor),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new register()));
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 150),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome!',
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
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'medium',
                  color: Colors.grey,
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
                  "Sign in",
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => tabs()));
                },
                style: style.loginButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
