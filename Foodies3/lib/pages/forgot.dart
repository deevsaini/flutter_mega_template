/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/verification.dart';
import '../helper/style.dart' as style;

class ForgotPage extends StatefulWidget {
    ForgotPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Forgot';

    @override
    State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {


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

                        Text('Forgot Password',
                            style: style.boldTitle(),
                        ),
                        SizedBox(height: 10),

                        Text('Please enter your Email so we can help you recover your password.',
                            style: TextStyle(
                                color: style.appGreyText
                            ),
                        ),
                        SizedBox(height: 24),

                        TextField(
                          decoration: style.textInputDecoration('Email ID'),
                        ),
                        SizedBox(height: 20),

                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new VerificationPage())
                                    );
                                },
                                child: Text('Next'),
                                    style: style.simpleButton(),
                                ),
                        )
                    ],
                ),
            ),
        );
    }

}
