/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:banky/pages/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  static const String page_id = "Register";

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
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
            text: ' Already have an account?',
            style: TextStyle(
                color: Colors.grey, fontSize: 14, fontFamily: 'medium'),
            children: <TextSpan>[
              TextSpan(
                text: 'Login',
                style:
                    TextStyle(fontFamily: 'semi-bold', color: style.appColor),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new login()));
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
                'Register!',
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
                  color: Colors.grey,
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
                  "Register",
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => login()));
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
