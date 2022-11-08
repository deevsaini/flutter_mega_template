/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/forgotPassword.dart';
import 'package:elearn/pages/register.dart';
import 'package:elearn/pages/tabs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class logIn extends StatefulWidget {
  logIn({Key? key}) : super(key: key);

  static const String page_id = "Log In";

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.grey.shade300),
                ),
                child: Icon(
                  Icons.lock,
                  size: 35,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'A handful of model sentense structures',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: simpleInputIconText(
                  'Email Id',
                  Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: TextField(
                      obscureText: true,
                      decoration: simpleInputIconText(
                          'Password', Icon(Icons.visibility_off_outlined)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      child: Icon(Icons.fingerprint),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: appColor, width: 1),
                    )),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => forgotPassword()));
                      },
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(color: appColor),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => tabs()));
                },
                child: Text(
                  'Log In',
                  style: TextStyle(fontFamily: 'medium'),
                ),
                style: simpleButton(),
              ),
              SizedBox(
                height: 20,
              ),
              Text('(Or)'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Log In with Google')
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(fontFamily: 'regular', color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Register',
                      style: TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                      recognizer: TapGestureRecognizer()
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
            ],
          ),
        ),
      ),
    );
  }
}
