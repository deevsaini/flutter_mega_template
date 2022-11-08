/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/register.dart';
import 'package:fitness/pages/tabs.dart';
import 'package:fitness/pages/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  static const String page_id = "Login";

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 40),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hey there,'),
                Text(
                  'Welcome Back',
                  style: style.headText(),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: style.simpleInputIconText(
                    'Email',
                    Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: style.simpleInputIconText(
                    'Password',
                    Icon(Icons.lock_outline),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Colors.grey.shade400))),
                  child: Text(
                    'Forgot your Password ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade400,
                      fontFamily: 'medium',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tabs()));
                  },
                  icon: Icon(Icons.login),
                  label: Text(
                    "Sign in",
                    style: TextStyle(fontFamily: 'semi-bold'),
                  ),
                  style: style.simpleButton(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black12),
                        ),
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    signInButtons('assets/images/google.png'),
                    signInButtons('assets/images/facebook.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account yet?',
                    style: TextStyle(
                      fontFamily: 'regular',
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Register',
                        style: TextStyle(
                            fontFamily: 'medium',
                            color: style.secondaryColor,
                            fontSize: 16),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new register()));
                          },
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget signInButtons(icon) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(icon, width: 30.0, height: 30.0),
        ),
      ),
    );
  }
}
