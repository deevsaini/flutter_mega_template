/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/login.dart';
import 'package:flutternewgrocery/pages/register.dart';
import '../helper/style.dart' as style;

class WelcomePage extends StatefulWidget {
    WelcomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Welcome';

    @override
    State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

    late double deviceWidth;

    @override
    Widget build(BuildContext context) {
        deviceWidth = MediaQuery.of(context).size.width;
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
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Image.asset('assets/images/basket_4.jpg'),

                    Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image.asset('assets/images/logo.png', width: 70),
                                SizedBox(height: 20),
                                Text('Welcome to \nGrocery',
                                    style: TextStyle(
                                        fontFamily: 'semi-bold',
                                        fontSize: 26
                                    ),
                                ),
                                SizedBox(height: 16),
                                Text('Shop everything you need without the trip to the supermarket.',
                                    style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 40),
                                _buildSimpleButton(),
                                _buildOutlineButton(),
                            ],
                        ),
                    ),
                ],
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
                        builder: (context) => new LoginPage())
                    );
                },
                child: Text('Login'),
                style: style.simpleButton(),
            ),
        );
    }

    Widget _buildOutlineButton() {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new RegisterPage())
                    );
                },
                child: Text('Create Account'),
                style: style.outlineButton(),
            )
        );
    }
}