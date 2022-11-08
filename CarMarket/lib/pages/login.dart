/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/forgotPassword.dart';
import 'package:car/pages/loginSuccess.dart';
import 'package:car/pages/signup.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  static const String page_id = "Login";

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: appColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return FractionallySizedBox(
                        heightFactor: 0.8,
                        child: signup(),
                      );
                    },
                  );
                },
                child: Text(
                  'CREATE NEW ACCOUNT',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(fontFamily: 'medium', fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'EMAIL',
                style: TextStyle(color: Colors.grey),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: UnderlineInputBorder(),
                    hintText: 'Your email'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'PASSWORD',
                style: TextStyle(color: Colors.grey),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: UnderlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: 'Your Password'),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return FractionallySizedBox(
                        heightFactor: 0.7,
                        child: forgotPassword(),
                      );
                    },
                  );
                },
                child: Text('Forgot Password ?'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginSuccess()));
                },
                child: Text('LOGIN'),
                style: simpleButton(),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text('OR'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/apple.png',
                    fit: BoxFit.cover,
                    color: Colors.grey,
                    height: 25,
                    width: 25,
                  ),
                  Image.asset(
                    'assets/images/fb.png',
                    fit: BoxFit.cover,
                    color: Colors.grey,
                    height: 25,
                    width: 25,
                  ),
                  Image.asset(
                    'assets/images/google.png',
                    color: Colors.grey,
                    fit: BoxFit.cover,
                    height: 25,
                    width: 25,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
