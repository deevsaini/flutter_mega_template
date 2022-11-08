/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/verification.dart';
import '../helper/style.dart' as style;

class RegisterPage extends StatefulWidget {
    RegisterPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Register';

    @override
    State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Let\'s get started',
                  style: TextStyle(
                      fontFamily: 'semi-bold',
                      fontSize: 24
                  ),
                ),
                Text('Create account to see out top picks for you!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
                SizedBox(height: 24),
                TextField(
                  decoration: style.inputTextFieldDecoration('Email', Icons.email_outlined),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Password', Icons.remove_red_eye_outlined),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Confirm Password', Icons.remove_red_eye_outlined),
                ),
                SizedBox(height: 30),

                _buildSimpleButton(),

                SizedBox(height: 24),

                Center(
                  child: Text('or',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                ),

                SizedBox(height: 24),

                _buildOutlineButton('assets/images/apple.png', 'Continue with Apple'),
                _buildOutlineButton('assets/images/search.png', 'Continue with Google')
              ],
            ),
          ),
        );
    }

    Widget _buildSimpleButton() {
        return Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new VerificationPage())
                    );
                },
                child: Text('Create Account'),
                style: style.simpleButton(),
            ),
        );
    }

    Widget _buildOutlineButton(icn, val) {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            child: OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset('$icn', width: 24),
                label: Text('$val'),
                style: style.outlineButton(),
            )
        );
    }
}