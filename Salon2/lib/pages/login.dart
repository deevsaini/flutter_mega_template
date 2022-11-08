/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/verification.dart';
import '../components/styles.dart' as style;

class Login extends StatefulWidget {
  static const String id = 'login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                _buildTopImage(),
                _buildLoginDesc(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNav(),
      ),
    );
  }

  Widget _buildTopImage() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/profile2.jpg'), fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildLoginDesc() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Groomy',
                style: TextStyle(
                    fontFamily: "bold", color: style.appColor, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'Stylist',
                style: TextStyle(
                    fontFamily: "bold", color: style.appColor, fontSize: 32),
              ),
            ),
            const Divider(
              height: 40,
              thickness: 4,
              indent: 150,
              endIndent: 150,
              color: Colors.black12,
            ),
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'Sign in with mobile',
                style: TextStyle(
                    fontFamily: "bold", color: style.appColor, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'We will send one time password for into login',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, fontFamily: "medium", color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(15)),
                  prefix: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(
                      'assets/images/india.png',
                      width: 20,
                      height: 15,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                child: const Text("Get OTP"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Verification()));
                },
                style: ElevatedButton.styleFrom(
                  primary: style.appColor,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.grey[300],
                )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Text(
                    'OR',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.grey[300],
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:
                        _buildimageButton('assets/images/apple.png', 'Apple'),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child:
                        _buildimageButton('assets/images/google.png', 'Google'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'By Continuing. you agree to our \n',
          style: TextStyle(color: Colors.black54, fontSize: 13),
          children: <TextSpan>[
            TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                )),
            TextSpan(text: ' & '),
            TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                )),
            TextSpan(text: ' & '),
            TextSpan(
                text: 'Content Policy',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildimageButton(image, name) {
    return ElevatedButton.icon(
      icon: Image.asset(
        image,
        width: 24,
        height: 24,
      ),
      label: Text(name),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.black,
        shadowColor: Colors.transparent,
        elevation: 5,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(width: 1, color: Colors.black26)),
      ),
    );
  }
}
