/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/register.dart';
import 'package:moneytransaction/pages/tabs.dart';
import '../helper/style.dart' as style;

class LoginPage extends StatefulWidget {
    LoginPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Login';

    @override
    State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
            ),
            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text('Sign In \nTo Account',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'semi-bold',
                                ),
                            ),
                            SizedBox(height: 16),
                            Text('Sign in with username or email and password to use your account.',
                                style: TextStyle(
                                    fontSize: 14,
                                ),
                            ),
                            SizedBox(height: 40),

                            TextField(
                                decoration: style.inputTextDecoration('Full Name', ''),
                            ),
                            SizedBox(height: 20),
                            TextField(
                                decoration: style.inputTextDecoration('Email Address', ''),
                            ),
                            SizedBox(height: 20),
                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(bottom: 24),
                                child: ElevatedButton(
                                    onPressed: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new TabsExample())
                                        );
                                    },
                                    child: Text('Sign In'),
                                    style: style.simpleButton(),
                                ),
                            ),

                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(bottom: 24),
                                child: ElevatedButton(
                                    onPressed: () {
//                                        Navigator.push(context, new MaterialPageRoute(
//                                            builder: (context) => new WelcomePage())
//                                        );
                                    },
                                    child: Text('Sign in with Apple ID'),
                                    style: appleButton(),
                                ),
                            ),

                            Center(
                                child: InkWell(
                                    onTap: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new RegisterPage())
                                        );
                                    },
                                    child: Text('Don\'t have an account? Sign Up',
                                        textAlign: TextAlign.center,
                                    ),
                                ),
                            )

                        ],
                    ),
                ),
            ),
        );
    }

    appleButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(16)
                ),
            ),
            textStyle: TextStyle(
                fontFamily: 'medium',
                fontSize: 15
            ),
            primary: Colors.black,
            onPrimary: Colors.white,
        );
    }
}