/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:taxibookflutter/pages/my-location.dart';
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
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
            ),
            body: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: style.shadowContainer(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                        Text('Are you new to Kangaroo cabs?',
                            style: style.boldLabel(),
                        ),

                        Text('Enter 4 digit code sent to your mobile number',
                            style: style.simpleLabel(),
                        ),

                        SizedBox(height: 20),

                        Text('9876543212',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'medium',
                                color: Colors.red
                            ),
                        ),

                        SizedBox(height: 20),

                        OtpTextField(
                            numberOfFields: 4,
                            showFieldAsBox: true,
                            borderWidth: 1,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            focusedBorderColor: (Colors.grey[300])!,
                            borderColor: (Colors.grey[300])!,
                            enabledBorderColor: (Colors.grey[300])!,
                            fieldWidth: 70,
                            textStyle: TextStyle(
                                fontFamily: 'semi-bold',
                                fontSize: 18
                            ),
                        ),

                        SizedBox(height: 20),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Resend code in: ',
                                        style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'regular'),
                                        children: <TextSpan>[
                                            TextSpan(text: '00:59', style: TextStyle(fontFamily: 'medium')),
                                        ],
                                    ),
                                ),
                                FloatingActionButton(
                                    onPressed: () {
//                                        Navigator.push(context, new MaterialPageRoute(
//                                            builder: (context) => new MyLocationPage())
//                                        );
                                      Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new MyLocationPage())
                                      );
                                    },
                                    child: Icon(Icons.arrow_forward),
                                    backgroundColor: style.appColor,
                                    elevation: 0,
                                )
                            ],
                        )

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

}