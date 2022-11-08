/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:salon/pages/tabs.dart';

class otpVerify extends StatefulWidget {
  otpVerify({Key? key}) : super(key: key);

  static const String page_id = "Otp Verify";

  @override
  _otpVerifyState createState() => _otpVerifyState();
}

class _otpVerifyState extends State<otpVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: _buildBody(context),
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      ),
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 140),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Verify phone',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'bold',
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                RichText(
                  text: TextSpan(
                    text:
                        'Please enter the 4 digit security code we just sent you at ',
                    style: TextStyle(
                        color: style.greyTextColor,
                        fontSize: 14,
                        fontFamily: 'medium'),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' 713-444-XXXX',
                          style: TextStyle(
                              fontFamily: 'semi-bold', color: style.appColor)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 36.0,
                ),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 60,
                  style: TextStyle(fontSize: 18),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                SizedBox(
                  height: 24.0,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => tabs()));
                      },
                      label: Text(
                        'Continue',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                      icon: const Icon(Icons.arrow_right_alt_outlined),
                      style: style.simpleButton(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Text(
                    'Resend in 40 sec',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: style.appColor,
                      fontSize: 16.0,
                      fontFamily: 'semi-bold',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
