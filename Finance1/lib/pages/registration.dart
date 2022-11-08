/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance1/pages/login.dart';
import 'package:finance1/pages/verification.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Registration extends StatefulWidget {
  static const String id = 'Registration';

  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
          _buildTextField("Phone"),
          _buildTextField("Password"),
          SizedBox(height: 25),
          elivatedButton('Create an Account'),
          textButton('Login')
        ],
      ),
    );
  }

  Widget _buildRegister() {
    return Container(
      padding: EdgeInsets.all(16),
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
              "Registration",
              style: TextStyle(
                  color: Colors.black, fontSize: 28, fontFamily: 'medium'),
            ),
          ),
          Text(
            "Enter your e-mail and create password. We will send you al verification code to your phone",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 14),
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

  elivatedButton(btn) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(btn, style: TextStyle(fontSize: 16, fontFamily: 'medium')),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Verification()));
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
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login()));
      },
      child: Text(val,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'regular',
            fontSize: 18,
          )),
    );
  }
}
