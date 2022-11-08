/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class forgotPassword extends StatefulWidget {
  forgotPassword({Key? key}) : super(key: key);

  static const String page_id = "Forgot Password";

  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  int tabId = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          if (tabId == 1)
            forgotContainer()
          else if (tabId == 2)
            otpContainer()
          else if (tabId == 3)
            createPassword()
        ],
      ),
    );
  }

  Widget forgotContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FORGOT PASSWORD',
          style: TextStyle(fontFamily: 'medium', fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Don\'t worry,we got your back.'),
        SizedBox(
          height: 20,
        ),
        Text(
          'PHONE NUMBER',
          style: TextStyle(color: Colors.grey),
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: UnderlineInputBorder(),
              hintText: 'Enter phone number'),
        ),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              tabId = 2;
            });
          },
          child: Text('CONTINUE'),
          style: simpleButton(),
        ),
      ],
    );
  }

  Widget otpContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ENTER VERIFY CODE',
          style: TextStyle(fontFamily: 'medium', fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Text('We just send you a verify code via a phone 098XXXX789'),
        SizedBox(
          height: 20,
        ),
        OTPTextField(
          length: 6,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 30,
          style: TextStyle(fontSize: 18),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.underline,
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text('The verify code will be expired in 01:58'),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'Resend code',
            style: TextStyle(color: appColor),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              tabId = 3;
            });
          },
          child: Text('SUBMIT CODE'),
          style: simpleButton(),
        ),
      ],
    );
  }

  Widget createPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CRETE NEW PASSWORD',
          style: TextStyle(fontFamily: 'medium', fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'NEW PASSWORD',
          style: TextStyle(color: Colors.grey),
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            border: UnderlineInputBorder(),
            suffixIcon: Icon(Icons.visibility),
            hintText: 'New password',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'REPEAT NEW PASSWORD',
          style: TextStyle(color: Colors.grey),
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            border: UnderlineInputBorder(),
            suffixIcon: Icon(Icons.visibility),
            hintText: 'Repeat new password',
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('CONFIRM'),
          style: simpleButton(),
        ),
      ],
    );
  }
}
