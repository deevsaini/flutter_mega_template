/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:salon1/Pages/ForgotPasswordPage.dart';
import 'package:salon1/Pages/RegisterPage.dart';
import 'package:salon1/Pages/TabsBarPage.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  static const String PageId = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: style.appColor,
                ),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                      child: FittedBox(
                        child: Image.asset('assets/images/logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
            child: Column(
              children: [
                _buildInputEmailContent('Email'),
                _buildInputPasswordContent('Password'),
                _buildForgotButton(),
                _buildLoginButton(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.black12),
                            ),
                          ),
                        ),
                        Text(
                          'or sign in with',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.black12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.facebook_rounded,
                            color: Color(0xFF4867AA),
                            size: 40,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              EvaIcons.twitter,
                              color: Color(0xFF1DA1F2),
                              size: 40,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              EvaIcons.google,
                              color: Color(0xFFdb3236),
                              size: 40,
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have account ?',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 15, color: style.appColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputEmailContent(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 15, fontFamily: 'bold'),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.only(bottom: 8.0, top: 14.0),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputPasswordContent(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 15, fontFamily: 'bold'),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                suffixIcon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: style.appColor,
                ),
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.only(bottom: 8.0, top: 14.0),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgotButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
          },
          child: Text(
            'Forgot Password ?',
            style: TextStyle(color: style.appColor),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log In',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
