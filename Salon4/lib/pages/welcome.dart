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
import 'package:newsalonflutter/pages/register.dart';
import '../helper/style.dart' as style;
import 'dart:math' as math;

class WelcomeScreen extends StatefulWidget {
    WelcomeScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Welcome';

    @override
    State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                    children: <Widget>[

//                        Transform.rotate(
//                            angle: 120,
//                            child: _buildImageContainer(),
//                        ),

                        _buildImageContainer(),
                        SizedBox(height: 30),

                        Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                children: [
                                    Container(
                                        width: double.infinity,
                                        height: 50,
                                        decoration: style.buttonContainer(),
                                        margin: EdgeInsets.only(bottom: 20),
                                        child: _buildButton('Login'),
                                    ),

                                    Container(
                                        width: double.infinity,
                                        height: 50,
                                        decoration: style.buttonContainer(),
                                        margin: EdgeInsets.only(bottom: 30),
                                        child: _buildButton('Register'),
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
                        )
                    ],
                ),
            ),
        );
    }

    Widget _buildImageContainer() {
        return Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/service4.jpg'),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(110, 234, 79, 144),
                        Color.fromARGB(110, 219, 64, 71),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.5, 1.0],
                    )
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Image(
                            image: AssetImage('assets/images/about.png'),
                            width: 200,
                        ),
                        SizedBox(height: 10),
                        Text('Natural Beauty',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: 'cursive'
                            ),
                        ),
                        SizedBox(height: 20),
                    ],
                ),
            ),
        );
    }

    Widget _buildButton(val) {
        return ElevatedButton(
            onPressed: () {
                if(val == 'Login') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new LoginScreen())
                    );
                }
                if(val == 'Register') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new RegisterScreen())
                    );
                }
            },
            style: style.roundButton(),
            child: Text('$val'.toUpperCase(),
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
}