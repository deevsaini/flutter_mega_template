/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:newsalonflutter/pages/login.dart';
import 'package:newsalonflutter/pages/tabs.dart';
import '../helper/style.dart' as style;

class RegisterScreen extends StatefulWidget {
    RegisterScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Register';

    @override
    State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
            ),
            body: _buildBody(context),
            bottomNavigationBar: _buildBottomBar(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Column(
                    children: <Widget>[

                        SizedBox(height: 30),

                        _buildInputLabel('Username'),
                        SizedBox(height: 10),
                        TextField(
                            textAlign: TextAlign.center,
                            decoration: style.textInputDecoration('Username')
                        ),
                        SizedBox(height: 20),

                        _buildInputLabel('Phone Number'),
                        SizedBox(height: 10),
                        TextField(
                            textAlign: TextAlign.center,
                            decoration: style.textInputDecoration('Phone Number')
                        ),
                        SizedBox(height: 20),

                        _buildInputLabel('Email - ID'),
                        SizedBox(height: 10),
                        TextField(
                            textAlign: TextAlign.center,
                            decoration: style.textInputDecoration('Email ID')
                        ),
                        SizedBox(height: 20),

                        _buildInputLabel('Password'),
                        SizedBox(height: 10),
                        TextField(
                            textAlign: TextAlign.center,
                            decoration: style.textInputDecoration('Password'),
                        ),
                        SizedBox(height: 20),

                        Container(
                            width: double.infinity,
                            height: 50,
                            decoration: style.buttonContainer(),
                            margin: EdgeInsets.only(bottom: 30),
                            child: _buildButton(),
                        ),

                        _buildOrContainer(),

                        SizedBox(height: 30),

                        Row(
                            children: [
                                Expanded(
                                    child: InkWell(
                                        onTap: () {},
                                        child: _socialButton('Facebook', Color.fromARGB(255, 174, 184, 211), Color.fromARGB(255, 60, 91, 154)),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: InkWell(
                                        onTap: () {},
                                        child: _socialButton('Google', Color.fromARGB(255, 248, 164, 163), Color.fromARGB(255, 245, 63, 62)),
                                    )
                                )
                            ],
                        )

                    ],
                ),
            ),
        );
    }

    Widget _buildInputLabel(val) {
        return Text('$val'.toUpperCase(),
            textAlign: TextAlign.center,
            style: style.inputLabel(),
        );
    }

    Widget _buildButton() {
        return ElevatedButton(
            onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new TabsExample())
                );
            },
            style: style.roundButton(),
            child: Text('Register'.toUpperCase(),
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'medium',
                ),
            ),
        );
    }

    Widget _buildOrContainer() {
        return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                    width: 60,
                    height: 3,
                    color: Colors.grey
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('OR WITH',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'medium'
                        ),
                    ),
                ),
                Container(
                    width: 60,
                    height: 3,
                    color: Colors.grey
                ),
            ],
        );
    }

    Widget _socialButton(text, color1, color2) {
        return Container(
            padding: EdgeInsets.all(6),
            decoration: style.socialContainer(color1),
            child: Row(
                children: [
                    Container(
                        width: 30,
                        height: 30,
                        padding: EdgeInsets.all(5),
                        decoration: style.iconContainer(color2),
                        child: Image(
                            image: AssetImage('assets/images/fb.png'),
                            width: 18,
                        ),
                    ),

                    Padding(padding: EdgeInsets.only(left: 8),
                        child: Text('$text'.toUpperCase(),
                            style: style.socialBtnText(color2)
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildBottomBar() {
        return Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: InkWell(
                onTap: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new LoginScreen())
                    );
                },
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: 'regular'),
                        children: <TextSpan>[
                            TextSpan(text: 'Login'.toUpperCase(), style: TextStyle(fontFamily: 'medium')),
                        ],
                    ),
                ),
            ),
        );
    }
}