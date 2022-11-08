/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shopping/helper/style.dart';
import 'package:shopping/pages/homeScreen.dart';
import 'package:shopping/pages/login.dart';

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
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'bold',
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputIconText(
                  'Full Name',
                  Icon(Icons.person_outline),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputIconText(
                  'Email',
                  Icon(Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputIconText(
                  'Password',
                  Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(
                    "Register",
                    style: TextStyle(fontFamily: 'semi-bold'),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => homeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: appColor,
                    onPrimary: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new logIn()));
                },
                child: Text(
                  'Already Register? Log In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: 'medium',
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
