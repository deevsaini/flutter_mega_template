/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/reset-password.dart';
import 'package:gofoodflutter/pages/tabs.dart';
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
            appBar: AppBar(
                backgroundColor: style.appGrey,
                iconTheme: IconThemeData(
                    color: Colors.black,
                    size: 30
                ),
                elevation: 0,
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                        Text('Verification',
                            style: style.boldTitle(),
                        ),
                        SizedBox(height: 10),

                        Text('Enter the OTP code from the phone we just sent you.',
                            style: TextStyle(
                                color: style.appGreyText
                            ),
                        ),
                        SizedBox(height: 24),

                        TextField(
                          decoration: style.textInputDecoration('Code'),
                        ),
                        SizedBox(height: 20),

                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Didn\'t receive OTP code! ',
                                style: TextStyle(fontSize: 16, color: style.appGreyText, fontFamily: 'regular'),
                                children: <TextSpan>[
                                    TextSpan(text: 'Resend',
                                        style: TextStyle(color: Colors.black)
                                    ),
                                ],
                            ),
                        ),
                        SizedBox(height: 20),

                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new ResetPasswordPage())
                                    );
                                },
                                child: Text('Submit'),
                                style: style.simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

}
