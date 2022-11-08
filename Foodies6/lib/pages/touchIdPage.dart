/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/faceIdPage.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/loginPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class touchIdPage extends StatefulWidget {
  touchIdPage({Key? key}) : super(key: key);

  static const String pageId = 'touchIdPage';

  @override
  State<touchIdPage> createState() => _touchIdPageState();
}

class _touchIdPageState extends State<touchIdPage> {
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
              _buildFingerPrint(),
              _buildORTitle(),
              _buildPrivacyTitle(),
              _buildEmailButton(),
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
            'Sign in Using Touch ID',
            style: TextStyle(
                fontFamily: 'bold', color: Colors.black, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Please your finger on the fingerprint sensor to login your account.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _buildFingerPrint() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 100),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ),
            border: Border.all(color: Colors.grey),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: SizedBox.fromSize(
              size: Size.fromRadius(50),
              child: FittedBox(
                child: Image.asset(
                  'assets/images/t1.png',
                  color: Colors.red,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildORTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'or',
            style:
                TextStyle(fontFamily: 'bold', fontSize: 15, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyTitle() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => faceIdPage()));
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
        ),
      ],
    );
  }

  Widget _buildEmailButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loginPage()));
      },
      child: Container(
        width: 150,
        height: 40,
        decoration: style.borderButtonStyle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login With Email',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
