/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelo/pages/forgotPasswordPage.dart';
import 'package:travelo/pages/registerPage.dart';
import 'package:travelo/pages/tabBarPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  static const String pageId = 'loginPage';

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
        // bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfile(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 30),
                _buildInputContent('Email', Icons.email),
                _buildInputContent('Password', Icons.remove_red_eye),
                _buildForgotButton(),
                _buildLoginButton(),
                _buildORcontent(),
                _buildSocialButton(),
                _buildNavigation(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              child: Column(
                children: [
                  Text(
                    'Log In',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    'Hi, Welcome Back!',
                    style: TextStyle(fontFamily: 'bold', color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputContent(txt, icn) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        cursorColor: style.appColor,
        autofocus: true,
        decoration: InputDecoration(
          focusColor: Colors.black,
          labelText: '$txt',
          filled: true,
          fillColor: Colors.white,
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          suffixIcon: Icon(
            icn,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: style.appColor,
              activeColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text(
              'Remember Me?',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => forgotPasswordPage()));
            },
            child: Text(
              'Forgot Password ?',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildORcontent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.grey),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.grey),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(tabBarPage.pageId, (route) => false);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            // Navigator.of(context)
            //     .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
          },
          child: Container(
            width: 150,
            padding: EdgeInsets.symmetric(vertical: 13.0),
            decoration: style.googleButtonStyle(),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Google',
                    style: TextStyle(
                        color: Colors.black, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            // Navigator.of(context)
            //     .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
          },
          child: Container(
            width: 150,
            padding: EdgeInsets.symmetric(vertical: 13.0),
            decoration: style.FbButtonStyle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Facebook',
                  style: TextStyle(
                      color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavigation() {
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: Wrap(
        children: [
          Text(
            'Don\'t have an Account ?',
            style: TextStyle(
                fontFamily: 'medium', color: Colors.black, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => registerPage()));
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontFamily: 'bold', color: style.appColor, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
