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
import 'package:food1_flutter_marketplace/pages/forgotPasswordPage.dart';
import 'package:food1_flutter_marketplace/pages/registerPage.dart';
import 'package:food1_flutter_marketplace/pages/tabsBarPage.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
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
              _buildInputContent('Your email address'),
              _buildInputContent('Password'),
              _buildForgotButton(),
              _buildLoginButton(),
              _buildORcontent(),
              _buildFacebookButton(),
              _buildGoogleButton(),
              _buildTitlesecond(),
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
            'Login to your account !',
            style: TextStyle(
                fontFamily: 'bold', color: Colors.black, fontSize: 20),
          ),
          Text(
            'Signin to your account.',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildTitlesecond() {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Wrap(
        children: [
          Text(
            'Not a member ?',
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
              'Join Now',
              style: TextStyle(
                  fontFamily: 'medium', color: style.appColor, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputContent(txt) {
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
                fillColor: Colors.grey.shade50,
                hintText: '$txt',
                contentPadding:
                    const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 10),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
                enabledBorder: OutlineInputBorder(
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
                MaterialPageRoute(builder: (context) => forgotPasswordPage()));
          },
          child: Text(
            'Forgot Password ?',
            style: TextStyle(color: Colors.grey),
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
          'or Signin With',
          style: TextStyle(fontFamily: 'bold'),
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
          Navigator.of(context)
              .pushNamedAndRemoveUntil(tabsBarpage.pageId, (route) => false);
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
    );
  }

  Widget _buildFacebookButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
      child: InkWell(
        onTap: () {
          // Navigator.of(context)
          //     .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
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
                'Continue With Facebook',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 20),
      child: InkWell(
        onTap: () {
          // Navigator.of(context)
          //     .pushNamedAndRemoveUntil(tabsBarPage.PageId, (route) => false);
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.GoogleButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.google,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Continue With Google',
                style: TextStyle(
                    color: Colors.black, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
