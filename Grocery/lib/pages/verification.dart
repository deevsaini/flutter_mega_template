/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutternewgrocery/pages/tabs.dart';
import '../helper/style.dart' as style;

class VerificationPage extends StatefulWidget {
    VerificationPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Verification';

    @override
    State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
            ),
            body: _buildBody(),
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text('Verify your number',
                            style: TextStyle(
                                fontFamily: 'semi-bold',
                                fontSize: 24
                            ),
                        ),
                        SizedBox(height: 24),
                        Text('Enter the 4-digit code we sent to you',
                            style: TextStyle(color: Colors.grey),
                        ),
                        Text('9876543212',
                            style: TextStyle(fontFamily: 'medium'),
                        ),
                        SizedBox(height: 40),

                        OtpTextField(
                            numberOfFields: 4,
                            showFieldAsBox: true,
                            borderWidth: 1,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            focusedBorderColor: (Colors.grey[300])!,
                            borderColor: (Colors.grey[300])!,
                            enabledBorderColor: (Colors.grey[300])!,
                            fieldWidth: 70,
                            textStyle: TextStyle(
                                fontFamily: 'semi-bold',
                                fontSize: 18
                            ),
                        ),
                        SizedBox(height: 40),

                        Text('Resend code in 00:20',
                            style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 16),

                        Text('Call me instead',
                            style: TextStyle(color: style.appColor),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new TabsExample())
                    );
                },
                child: Text('Continue'),
                style: style.simpleButton(),
            ),
        );
    }
}