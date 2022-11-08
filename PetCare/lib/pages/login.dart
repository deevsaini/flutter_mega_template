/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:pet_care/pages/tabs.dart';
import 'package:pet_care/pages/welcome.dart';
import 'package:pet_care/widget/elevated_button.dart';
import 'package:pet_care/widget/text_btn.dart';
import '../components/styles.dart';

class Login extends StatefulWidget {
  static const String id = 'Login';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: appColor,
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildProfile(),
                      SizedBox(height: 80),
                      _buildProfileDtl()
                    ],
                  ),
                  Positioned(
                      top: 80,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildLoginDetail()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.35,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        color: appColor,
        child: Text(
          'Sign In',
          style:
              TextStyle(color: Colors.white, fontSize: 32, fontFamily: 'bold'),
        ));
  }

  Widget _buildLoginDetail() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              new BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
              )
            ]),
        child: Column(
          children: [
            textField('Email', Icons.check),
            textField('Password', Icons.remove_red_eye),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyTextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()));
                    },
                    text: 'Do not remember the password?',
                    colors: appColor),
              ],
            ),
            SizedBox(height: 30),
            MyElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabsExample()));
                },
                colors: appColor,
                text: 'Sign In'),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDtl() {
    return Container(
      padding: EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [greyText('Or log in with social account')],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: imageButton('assets/images/apple.png', 'Apple'),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: imageButton('assets/images/google.png', 'Google'),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              blackText('Dont have an account?'),
              MyTextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  colors: appColor,
                  text: "Sign up")
            ],
          )
        ],
      ),
    );
  }

  imageButton(image, name) {
    return ElevatedButton.icon(
      icon: Image.asset(
        image,
        width: 24,
        height: 24,
      ),
      label: Text(name),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        shadowColor: Colors.black38,
        elevation: 5,
        padding: EdgeInsets.all(16),
        shape: (RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )),
      ),
    );
  }
}
