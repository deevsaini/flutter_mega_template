/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/login.dart';
import 'package:moneytransaction/pages/verification.dart';
import '../helper/style.dart' as style;

class RegisterPage extends StatefulWidget {
    RegisterPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Register';

    @override
    State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

    bool check = true;

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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Text('Welcome!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'semi-bold',
                                ),
                            ),
                            SizedBox(height: 16),
                            Text('Please provide following \n details for your new account',
                                textAlign: TextAlign.center,
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
                            TextField(
                                decoration: style.inputTextDecoration('Phone Number', ''),
                            ),
                            SizedBox(height: 20),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                    Checkbox(
                                        activeColor: Color.fromARGB(255, 165,232,240),
                                        checkColor: style.appColor,
                                        value: this.check,
                                        onChanged: (bool? value) {
                                            setState(() {
                                                this.check = !this.check;
                                            });
                                        }
                                    ),
                                    Expanded(
                                        child: Text('Be creating your account you have to agree \n with our Terms and Conditions.',
                                            style: TextStyle(fontSize: 12),
                                        )
                                    ),
                                ],
                            ),
                            SizedBox(height: 20),
                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(bottom: 24),
                                child: ElevatedButton(
                                    onPressed: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new VerificationPage())
                                        );
                                    },
                                    child: Text('Sign up my account'),
                                    style: style.simpleButton(),
                                ),
                            ),

                            Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(bottom: 24),
                                child: ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: Text('Sign in with Apple ID'),
                                    style: appleButton(),
                                ),
                            ),

                            Center(
                                child: InkWell(
                                    onTap: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new LoginPage())
                                        );
                                    },
                                    child: Text('Already have an account? Sign In',
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