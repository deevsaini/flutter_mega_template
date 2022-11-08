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
import 'package:moneytransaction/pages/tabs.dart';
import '../helper/style.dart' as style;

class VerificationPage extends StatefulWidget {
    VerificationPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Verification';

    @override
    State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

    bool check = true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
            ),
            bottomNavigationBar: _buildBottomContainer(),
            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text('Verify \nAccount!',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'semi-bold',
                                ),
                            ),
                            SizedBox(height: 16),
                            Text('Enter 4-digit code we have sent to at',
                                style: TextStyle(
                                    fontSize: 14,
                                ),
                            ),
                            Text('9876543212',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline
                                ),
                            ),
                            SizedBox(height: 40),

                            OtpTextField(
                                numberOfFields: 4,
                                showFieldAsBox: true,
                                borderWidth: 1,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                focusedBorderColor: Color.fromARGB(255, 165,232,240),
                                borderColor: (Colors.grey[300])!,
                                enabledBorderColor: Colors.transparent,
                                filled: true,
                                fillColor: Color.fromARGB(255, 236,250,251),
                                fieldWidth: 70,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(16)
                                ),
                                textStyle: TextStyle(
                                    fontFamily: 'semi-bold',
                                    fontSize: 18,
                                ),
                            ),

                            SizedBox(height: 40),
                            RichText(
                                text: TextSpan(
                                    text: 'This season will end in 60 seconds. \n',
                                    style: TextStyle(fontSize: 16, color: Colors.black),
                                    children: <TextSpan>[
                                        TextSpan(text: 'Didn\'t get code? '),
                                        TextSpan(text: 'Recent Code',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                decoration: TextDecoration.underline
                                            )
                                        ),
                                    ],
                                ),
                            )
                        ],
                    ),
                ),
            ),
        );
    }

    _buildBottomContainer() {
        return Container(
            width: 270,
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