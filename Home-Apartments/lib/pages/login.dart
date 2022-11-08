/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/modal/terms_condition.dart';
import 'package:home/pages/password_recovery.dart';
import 'package:home/pages/register.dart';
import 'package:home/widget/elevated_button.dart';
import 'package:home/widget/text_btn.dart';
import '../components/styles.dart';

class Login extends StatefulWidget {
  static const String id = 'Login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          title: Text('Sign in', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.close,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/home.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        _buildDragg(),
      ],
    );
  }

  Widget _buildDragg() {
    return DraggableScrollableSheet(
      initialChildSize: .76,
      minChildSize: .76,
      maxChildSize: .86,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Container(
            color: backgroundColor,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldHeading("Welcome back!"),
                  greyText("Hello there, login to continue"),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: imageButton('assets/images/apple.png', 'Apple'),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child:
                            imageButton('assets/images/google.png', 'Google'),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(16),
                      child: Center(child: greyText("or sign with"))),
                  blackText("Email Address"),
                  textField('Enter email', Icons.check_circle),
                  SizedBox(height: 16),
                  blackText("Password"),
                  textField('Enter password', Icons.remove_red_eye),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyTextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PasswordRecovery()));
                          },
                          text: "Forgot Password?"),
                    ],
                  ),
                  SizedBox(height: 16),
                  MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TermsConditionModal()));
                    },
                    text: 'Login Account',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      greyText("Dont have an account?"),
                      MyTextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()));
                          },
                          text: "Sign Up")
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
