/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food2/pages/location.dart';
import 'package:food2/pages/register.dart';
import '../components/styles.dart' as style;

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
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
              ),
              SizedBox(height: 20),
              _buildForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
            ),
          ]),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'bold', fontSize: 24, color: Colors.black54),
          ),
          SizedBox(height: 5),
          Text(
            'Email/Phone Number',
            style: TextStyle(fontSize: 14, color: Colors.black45),
          ),
          _buildTextField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Password',
                style: TextStyle(fontSize: 14, color: Colors.black45),
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ],
          ),
          _buildTextField(),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text("Sign In",
                  style: TextStyle(fontSize: 16, fontFamily: 'semibold')),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Location()));
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have an account?",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "medium",
                      color: Colors.black54)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()));
                  },
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "semibold",
                          color: style.appColor))),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
              ),
              Expanded(
                  child: Container(
                height: 1,
                color: Colors.grey[300],
              )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: const Text(
                  'Or Sign in with',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ),
              Expanded(
                  child: Container(
                height: 1,
                color: Colors.grey[300],
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                socialButtonCircle('assets/images/facebook.png'),
                socialButtonCircle('assets/images/google.png'),
                socialButtonCircle('assets/images/apple.png'),
              ],
            ),
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
        width: 30,
        height: 30,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Colors.white,
        padding: const EdgeInsets.all(10),
      ),
    );
  }

  Widget _buildTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 20),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          height: 1.0,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
