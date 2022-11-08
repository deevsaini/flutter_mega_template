/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/signin.dart';
import 'package:elearn/pages/signup.dart';
import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  static const String page_id = "Welcome";

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'By creating account you are agree to our',
            style: TextStyle(
              fontFamily: 'regular',
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Terms of service',
                style: TextStyle(
                    fontFamily: 'medium', color: appColor, fontSize: 14),
                // recognizer: new TapGestureRecognizer()
                //   ..onTap = () {
                //     Navigator.push(
                //         context,
                //         new MaterialPageRoute(
                //             builder: (context) =>
                //                 new completeProfile()));
                // },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/welcome.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We currently have over \n 740 exam waiting \n for you!',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signup()));
              },
              child: Text(
                'Create account',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: blueButton(),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Already have an account ?'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signin()));
              },
              child: Text(
                'Sign in',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: blueButton(),
            ),
          ],
        ),
      ),
    );
  }
}
