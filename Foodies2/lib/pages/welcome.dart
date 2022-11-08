/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/pages/login.dart';
import '../components/styles.dart' as style;

class Welcome extends StatefulWidget {
  static const String id = 'welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -30,
            right: -30,
            height: 150,
            width: 150,
            child: Container(
              child: Image.asset(
                'assets/images/5.png',
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            left: -40,
            width: 250,
            height: 250,
            child: Container(
              child: Image.asset(
                'assets/images/3.png',
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            right: -20,
            width: 100,
            height: 100,
            child: Container(
              child: Image.asset(
                'assets/images/2.png',
              ),
            ),
          ),
          Center(child: _buildCenter()),
        ],
      ),
    );
  }

  Widget _buildCenter() {
    return Container(
      color: Colors.transparent,
      // height: deviceHeight - 250,
      padding: const EdgeInsets.all(35),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Get your favourite food in this application',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 18, color: Colors.black45),
              ),
            ),
            const SizedBox(height: 70),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Sign In",
                    style: TextStyle(fontSize: 16, fontFamily: 'semibold')),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                style: ElevatedButton.styleFrom(
                  primary: style.appColor,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Dont have an account? ",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "medium",
                          color: Colors.black54)),
                  TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "semibold",
                          color: style.appColor)),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
