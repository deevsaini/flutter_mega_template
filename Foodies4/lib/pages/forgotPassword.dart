/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/signIn.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class forgotPassword extends StatefulWidget {
  forgotPassword({Key? key}) : super(key: key);

  static const String page_id = "Forgot Password";

  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  int tabID = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(),
        body: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Column(
              children: [
                tabID == 1
                    ? _buildBodyForgot()
                    : tabID == 2
                        ? _buildBodyOTP()
                        : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Forgot Password',
      ),
    );
  }

  Widget _buildBodyForgot() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Forgot Password',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Please enter Your Email  So We Can Help You Recover Password.',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text(
              "Reset Password",
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            onPressed: () {
              setState(() {
                tabID = 2;
              });
            },
            style: style.simpleButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildBodyOTP() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Verification',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text: 'Enter The OTP Code From The Phone Just You Sent at ',
              style: TextStyle(fontFamily: 'regular', color: Colors.grey),
              children: <TextSpan>[
                TextSpan(
                  text: ' +994 0 999 00 00',
                  style: TextStyle(
                    fontFamily: 'medium',
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Did You Enter The Correct Number?',
          ),
          SizedBox(
            height: 20,
          ),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 60,
            style: TextStyle(fontSize: 15),
            textFieldAlignment: MainAxisAlignment.spaceEvenly,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text: 'Didn\'t recieve SMS? ',
              style: TextStyle(fontFamily: 'regular', color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: ' Resend Code',
                  style: TextStyle(
                    fontFamily: 'medium',
                    color: style.appColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: const Text(
              "Verify",
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new signIn()));
            },
            style: style.simpleButton(),
          ),
        ],
      ),
    );
  }
}
