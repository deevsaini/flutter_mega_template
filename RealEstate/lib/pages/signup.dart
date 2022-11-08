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
import 'package:realestate/pages/accounCreateSuccess.dart';
import 'package:realestate/pages/signin.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  static const String page_id = "Sign Up";

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
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
                  text: ' Sign In',
                  style: TextStyle(
                    fontFamily: 'medium',
                    color: Colors.amber,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signin()));
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
        'Sign up',
        style: headText(),
      ),
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
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey.shade200,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputText('Full Name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputText('Phone Number'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputText('Email'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputText('Password'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputText('Confirm Password'),
              ),
              SizedBox(
                height: 20,
              ),
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
                  Expanded(
                    child: Text(
                        'By Creating an account you agree to our Terms of service and privacy policy'),
                  )
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
                          builder: (context) => accountCreateSuccess()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                ),
                style: greenButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
