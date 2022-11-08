/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/general-info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../helper/style.dart' as style;

class VerificationPage extends StatefulWidget {
    VerificationPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Verification';

    @override
    State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

    bool useEmail = true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildAppBar() {
        return AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
                color: style.appColor,
                size: 30
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            title: Text('Login Using OTP'),
            titleTextStyle: style.pageTitle(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Please check the OTP sent to your mobile number',
                            textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text('9876543212',
                                    style: TextStyle(
                                        fontFamily: 'medium',
                                        fontSize: 18
                                    ),
                                ),
                                SizedBox(width: 16),
                                OutlinedButton(
                                    onPressed: () {},
                                    child: Text('Change',
                                        style: TextStyle(color: Colors.black),
                                    )
                                ),
                            ],
                        ),
                        SizedBox(height: 16),
                        Text('Enter OTP', style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 16),
                        Container(
                            height: 44,
                            child: OtpTextField(
                              numberOfFields: 6,
                              showFieldAsBox: true,
                              borderWidth: 1,
                              focusedBorderColor: (Colors.grey[300])!,
                              borderColor: (Colors.grey[300])!,
                              enabledBorderColor: (Colors.grey[300])!,
                              fieldWidth: 44,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textStyle: TextStyle(
                                  fontFamily: 'semi-bold',
                                  fontSize: 15
                              ),
                            )
                        ),
                        SizedBox(height: 16),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text('00:28',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16
                                    ),
                                ),
                                SizedBox(width: 16),
                                OutlinedButton(
                                    onPressed: () {},
                                    child: Text('Resend OTP',
                                        style: TextStyle(color: Colors.black),
                                    )
                                ),
                            ],
                        ),
                        SizedBox(height: 36),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new GeneralInfoPage())
                                    );
                                },
                                child: Text('Login'),
                                style: style.simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    whiteBox() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            )
        );
    }

    textInputDecoration() {
        return InputDecoration(
            labelText: useEmail == true ? 'Enter Image Address' : 'Enter Mobile No',
            labelStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.all(0),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: underlineBorder(),
            focusedBorder: underlineBorder(),
            enabledBorder: underlineBorder(),
            suffix: InkWell(
                onTap: () {
                    setState(() {
                        useEmail = !useEmail;
                    });
                },
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: textContainer(),
                    child: Text(
                        useEmail == true ? 'Use Mobile Number' : 'Use Email Address',
                        style: TextStyle(fontSize: 13),
                    ),
                ),
            )
        );
    }

    underlineBorder() {
        return UnderlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: (Colors.grey[300])!
            )
        );
    }

    textContainer() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(
                width: 1,
                color: (Colors.grey[300])!
            )
        );
    }

    simpleButton() {
        return ElevatedButton(
            onPressed: () {},
            child: Text('Continue'),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 14),
                primary: style.appRed,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                elevation: 0,
                textStyle: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 16,
                    letterSpacing: 0.5
                ),
            ),
        );
    }
}