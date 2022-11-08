/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class otpInput extends StatefulWidget {
  otpInput({Key? key}) : super(key: key);

  static const String page_id = "Otp Verification";

  @override
  State<otpInput> createState() => _otpInputState();
}

class _otpInputState extends State<otpInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => signin()));
          },
          child: Text(
            'Continue',
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          ),
          style: blueButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Verification',
        style: headText(),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'SKIP',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'We texted you a code to verify your phone number',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: TextStyle(fontSize: 18),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'I did not receive a code',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'RESEND',
            textAlign: TextAlign.center,
            style: TextStyle(color: appColor, fontFamily: 'medium'),
          ),
        ],
      ),
    );
  }
}
