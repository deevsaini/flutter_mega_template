/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/accCreateSuccess.dart';
import 'package:elearn/pages/logIn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  static const String page_id = "Register";

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  bool _value = false;
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
                  Icons.people,
                  size: 35,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Create an Account',
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
                  'Username',
                  Icon(Icons.person_outline),
                ),
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    activeColor: appColor,
                    value: _value,
                    onChanged: (bool? _value) {
                      setState(() {
                        this._value = _value!;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'I hearby agree to the ',
                      style:
                          TextStyle(fontFamily: 'regular', color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Terms of service \n and Privacy Policy',
                          style: TextStyle(
                            fontFamily: 'medium',
                            color: appColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(
                              //     context,
                              //     new MaterialPageRoute(
                              //         builder: (context) => new signIn()));
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => accCreateSuccess()));
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(fontFamily: 'medium'),
                ),
                style: simpleButton(),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(fontFamily: 'regular', color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Log In',
                      style: TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new logIn()));
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
