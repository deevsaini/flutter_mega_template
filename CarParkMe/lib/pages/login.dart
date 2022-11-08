/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/home.dart';
import 'package:parkme/pages/phone_signup.dart';
import 'package:parkme/widget/elevated_button.dart';
import 'package:parkme/widget/text_btn.dart';
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
        height: MediaQuery.of(context).size.height * 1,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 34, vertical: 24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Image.asset(
                'assets/images/parking.png',
                fit: BoxFit.cover,
                width: 77,
                height: 100,
              ),
            ),
            Column(
              children: [
                textField('Phone number', Icons.done),
                textField('Password', Icons.done),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyTextButton(onPressed: () {}, text: 'Forgot password?')
                  ],
                ),
              ],
            ),
            Column(
              children: [
                MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    text: 'Log in'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    greyText('or'),
                    MyTextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PhoneSignUp()));
                        },
                        text: 'Sign up')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
