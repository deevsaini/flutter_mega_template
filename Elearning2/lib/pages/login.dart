/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/register.dart';
import 'package:learning/pages/tabs.dart';
import 'package:learning/widget/elevated_button.dart';
import 'package:learning/widget/text_btn.dart';
import '../components/styles.dart';

class Login extends StatefulWidget {
  static const String id = 'Login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/slide2.png',
                    width: 230,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  centerkHeading('Log in'),
                  centerText('Login with social networks'),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialButtonCircle('assets/images/facebook.png'),
                        socialButtonCircle('assets/images/google.png'),
                        socialButtonCircle('assets/images/apple.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            textField('Email', Icons.check),
            textField('Password', Icons.remove_red_eye_outlined),
            MyTextButton(onPressed: () {}, text: 'Forgot Password?'),
            MyElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabsExample()));
                },
                text: 'Log in'),
            MyTextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register()));
                },
                text: 'Sign up'),
          ],
        ),
      ),
    );
  }

  Widget socialButtonCircle(img) {
    return ElevatedButton(
      onPressed: () {},
      child: Image.asset(
        img,
        width: 26,
        height: 26,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: appColor2,
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
    );
  }
}
