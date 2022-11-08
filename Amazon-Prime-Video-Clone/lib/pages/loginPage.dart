/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:prime_video_fluttermarketplace/pages/forgotPasswordPage.dart';
import 'package:prime_video_fluttermarketplace/pages/registerPage.dart';
import 'package:prime_video_fluttermarketplace/pages/tabBarPage.dart';
import 'package:prime_video_fluttermarketplace/utilities/constancePage.dart'
    as style;

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
        backgroundColor: Colors.black,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.black,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: SizedBox.fromSize(
                size: Size.fromRadius(30),
                child: FittedBox(
                  child: Image.asset('assets/images/l2.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Sign in',
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 20, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => forgotPasswordPage()));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  _buildInputContent('Email or Phone Number'),
                  _buildInputContent('Amazon Password'),
                ],
              ),
            ),
            Row(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: Checkbox(
                    checkColor: style.itemColor,
                    activeColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                Text(
                  'Show Password',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      tabBarPage.pageId, (route) => false);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 13.0),
                  decoration: style.contentButtonStyle(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign - in',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: RichText(
                text: TextSpan(
                  text: 'By Continuing, you agree to Amazon\'s ',
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Conditions of Use',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Notice.',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'New to Amazon?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => registerPage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 13.0),
                  decoration: style.contentButtonStyle2(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create a new Amazon account',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Condition of Use',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    'Privacy Notice',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '@ 1996-2022, Amazon.com,Inc. or its affliates',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputContent(txt) {
    return Container(
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF252E39),
          hoverColor: Colors.grey,
          hintText: '$txt',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: style.itemColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
