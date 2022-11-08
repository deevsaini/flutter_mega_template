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
import 'package:foodies_fluttermarketplace_hardik/pages/chefSelectionPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/faceIdPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/forgotPasswordPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/registerPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/touchIdPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  static const String pageId = 'loginPage';

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
    return Center(
      child: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildTitle(),
              _buildInputContent('Your email address', Icon(Icons.email)),
              _buildInputContent('Password', Icon(Icons.remove_red_eye)),
              _buildForgotButton(),
              _buildLoginButton(),
              _buildTitlesecond(),
              _buildORcontent(),
              _buildSocialButton(),
              _buildPrivacyTitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Text(
            'Login',
            style: TextStyle(
                fontFamily: 'bold', color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildTitlesecond() {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 30),
      child: Wrap(
        children: [
          Text(
            'Don\'t have account ?',
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
              'Sign up',
              style: TextStyle(
                  fontFamily: 'medium', color: style.appColor, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputContent(txt, icn) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                hintText: '$txt',
                suffixIcon: icn,
                contentPadding:
                    const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: style.appColor),
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(50),
                ),
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
                MaterialPageRoute(builder: (context) => forgotPasswordPage()));
          },
          child: Text(
            'Forgot Password ?',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _buildORcontent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
        ),
        Text(
          'Or Signin With',
          style: TextStyle(color: Colors.grey),
        ),
        Container(
          width: 100,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.grey),
          )),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
              chefSelectionPage.pageId, (route) => false);
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle1(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Navigator.of(context)
              //     .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
            },
            child: Container(
              width: 150,
              height: 40,
              decoration: style.FacebookButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Facebook',
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.of(context)
              //     .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: style.GoogleButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Google',
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyTitle() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => touchIdPage()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(10),
                    child: FittedBox(
                      child: Image.asset(
                        'assets/images/t1.png',
                        color: Colors.red,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sign in Using Touch ID',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => faceIdPage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(10),
                  child: FittedBox(
                    child: Image.asset(
                      'assets/images/f1.png',
                      color: Colors.red,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Sign in With Face ID',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
