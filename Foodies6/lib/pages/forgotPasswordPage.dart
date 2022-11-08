/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class forgotPasswordPage extends StatefulWidget {
  forgotPasswordPage({Key? key}) : super(key: key);

  static const String pageId = 'forgotPasswordPage';

  @override
  State<forgotPasswordPage> createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Column(
              children: [
                if (tabID == 1)
                  _buildBodyForgot()
                else if (tabID == 2)
                  _buildBodyOTP()
                else if (tabID == 3)
                  _buildBodyNewPassword()
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
    );
  }

  Widget _buildBodyForgot() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: SizedBox.fromSize(
            size: Size.fromRadius(50),
            child: FittedBox(
              child: Image.asset(
                'assets/images/i1.png',
                color: Colors.red,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Reset Your Password',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Please enter your email address and we will send your password by email immediately.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputContent('Enter Email', Icon(Icons.email)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: InkWell(
            onTap: () {
              setState(() {
                tabID = 2;
              });
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle1(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Send',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBodyOTP() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: SizedBox.fromSize(
            size: Size.fromRadius(50),
            child: FittedBox(
              child: Image.asset(
                'assets/images/i1.png',
                color: Colors.red,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Enter your OTP !',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Please emter your OTP and we will create your new password.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
        Row(
          children: [
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: TextStyle(fontSize: 15),
              textFieldAlignment: MainAxisAlignment.spaceEvenly,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: InkWell(
            onTap: () {
              setState(() {
                tabID = 3;
              });
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle1(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBodyNewPassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: SizedBox.fromSize(
            size: Size.fromRadius(50),
            child: FittedBox(
              child: Image.asset(
                'assets/images/i1.png',
                color: Colors.red,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Set your password !',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            'Please enter your new password and confirm it.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputContent(
                  'Enter your new password', Icon(Icons.remove_red_eye)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputContent(
                  'Enter your confirm password', Icon(Icons.remove_red_eye)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle1(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Reset Password',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
}
