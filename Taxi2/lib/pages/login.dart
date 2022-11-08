/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/verification.dart';
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
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(35),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign In",
                style: TextStyle(
                    fontSize: 32, color: appColor, fontFamily: "bold")),
            SizedBox(height: 10),
            Text("Welcome back to Waving",
                style: TextStyle(
                    fontSize: 20, color: appColor, fontFamily: "semibold")),
            SizedBox(height: 50),
            _buildTextField(),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: btnText("SEND"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Verification()));
                },
                style: btnStyle(),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.black12,
                )),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: const Text(
                    'Or ',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.black12,
                )),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  socialButtonCircle('assets/images/twitter.png'),
                  socialButtonCircle('assets/images/google.png'),
                  socialButtonCircle('assets/images/apple.png'),
                ],
              ),
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text("CREATE AN ACCOUNT",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "semibold",
                          color: appColor))),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.black26,
          ),
          prefixIcon: Icon(
            Icons.call,
            color: appColor,
          ),
          hintText: 'Enter Phone',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
          ),
        ],
      ),
    );
  }

  Widget socialButtonCircle(img) {
    return ElevatedButton(
      onPressed: () {},
      child: Image.asset(
        img,
        width: 24,
        height: 24,
        color: appColor,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 8,
        shadowColor: backgroundColor,
        primary: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      ),
    );
  }
}
