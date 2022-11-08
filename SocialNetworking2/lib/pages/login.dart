/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/forgot_password.dart';
import 'package:social_network/pages/register.dart';
import 'package:social_network/pages/tabs.dart';
import 'package:social_network/widget/elevated_button.dart';
import 'package:social_network/widget/text_btn.dart';
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
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
        ),
        bottomNavigationBar: bottomNav(),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              blackHeading('Login'),
              SizedBox(height: 20),
              textField('Your Email', Icons.check),
              textField('Password', Icons.remove_red_eye),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyTextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      text: 'Forgot password?',
                      colors: Colors.black),
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
                  colors: appColorBtn,
                  text: 'Login'),
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
        )));
  }

  bottomNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        greyText("Dont have an account?"),
        MyTextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Register()));
            },
            colors: Colors.black,
            text: "Sign Up")
      ],
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
