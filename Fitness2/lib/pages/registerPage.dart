/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/tabBarPage.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class registerPage extends StatefulWidget {
  registerPage({Key? key}) : super(key: key);

  static const String pageId = 'registerPage';

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF2D2D39),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF2D2D39),
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Register',
        style: TextStyle(fontFamily: 'bold', color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildInputContent('Username'),
                _buildInputContent('Email'),
                _buildInputContent('Phone'),
                _buildInputContent('Password'),
                _buildInputContent('Confirm Password'),
                _buildSignUpButton(),
                _buildNavigation(),
              ],
            ),
          ),
        ),
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
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF2D2D39),
                hintText: '$txt',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                    const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 10),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: style.appColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(tabBarPage.pageId, (route) => false);
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle2(),
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

  Widget _buildNavigation() {
    return Padding(
      padding: EdgeInsets.only(top: 50),
      child: Wrap(
        children: [
          Text(
            'You have an Already Account ?',
            style: TextStyle(
                fontFamily: 'medium', color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Login Now',
              style: TextStyle(
                  fontFamily: 'medium', color: style.appColor, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
