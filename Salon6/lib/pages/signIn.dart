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
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/forgotPasswod.dart';
import 'package:salon/pages/signUp.dart';
import 'package:salon/pages/tabs.dart';

class signIn extends StatefulWidget {
  signIn({Key? key}) : super(key: key);

  static const String page_id = "Sign In";

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: ' Don\'t have an account?',
            style: TextStyle(
                color: style.greyTextColor, fontSize: 14, fontFamily: 'medium'),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign up',
                style:
                    TextStyle(fontFamily: 'semi-bold', color: style.appColor),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new signUp()));
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'bold',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'medium',
                      color: style.greyTextColor,
                    ),
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                        activeColor: style.appColor,
                        value: true,
                        onChanged: (bool) {
                          setState(() {});
                        },
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(color: style.appColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Sign in",
                      style: TextStyle(fontFamily: 'semi-bold'),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => tabs()));
                    },
                    style: style.simpleButton(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'or Continue with',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      signInButtons('assets/images/facebook.png'),
                      signInButtons('assets/images/gmail.png'),
                      signInButtons('assets/images/twitter.png')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new forgotPassword()));
                      },
                      child: Text(
                        'Forgot your Password ?',
                        style: TextStyle(
                          fontSize: 14,
                          color: style.greyTextColor,
                          fontFamily: 'medium',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
        borderRadius: BorderRadius.circular(20),
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
