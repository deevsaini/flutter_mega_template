/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance1/pages/tabs.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Step 1/3",
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildRegister(),
          _buildTextField("Password"),
          _forgetButton(),
          SizedBox(height: 25),
          elivatedButton('Continue'),
          textButton('Login with facebook')
        ],
      ),
    );
  }

  Widget _buildRegister() {
    return Container(
      padding: EdgeInsets.all(28),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/slide1.png',
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.black, fontSize: 28, fontFamily: 'medium'),
            ),
          ),
          Text(
            "Enter yourpassword",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      )),
    );
  }

  Widget _buildTextField(hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: TextStyle(color: appColor),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: appColor),
          ),
        ),
      ),
    );
  }

  Widget _forgetButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 14),
            ),
            onPressed: () {},
            child: Text("Forgot your password?",
                style: TextStyle(
                  color: appColor,
                  fontFamily: 'regular',
                )),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 14),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.fingerprint,
                ),
                SizedBox(width: 5),
                Text("Use fingerprint",
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: 'regular',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  elivatedButton(btn) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(btn, style: TextStyle(fontSize: 16, fontFamily: 'medium')),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TabsExample()));
        },
        style: ElevatedButton.styleFrom(
          primary: appColor,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }

  textButton(val) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          side: BorderSide(width: 1.0, color: Colors.blue.shade900),
          padding: const EdgeInsets.symmetric(vertical: 10),
          textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: Text(val,
            style: TextStyle(
              color: Colors.blue.shade900,
              fontFamily: 'regular',
              fontSize: 18,
            )),
      ),
    );
  }
}
