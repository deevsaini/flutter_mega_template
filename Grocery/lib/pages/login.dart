/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/tabs.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login to continue',
                  style: TextStyle(
                      fontFamily: 'semi-bold',
                      fontSize: 24
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

                _buildSimpleButton(),

                Center(
                  child: InkWell(
                    child: Text('Forgot Password?',
                      style: TextStyle(color: style.appColor),
                    ),
                  ),
                )

              ],
            ),
          ),
        );
    }

    Widget _buildSimpleButton() {
        return Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 24),
            child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new TabsExample())
                    );
                },
                child: Text('Login'),
                style: style.simpleButton(),
            ),
        );
    }
}