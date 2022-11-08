/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/password.dart';
import '../helper/style.dart' as style;

class EmailPage extends StatefulWidget {
    EmailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Email';

    @override
    State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {

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

                        Text('Enter your email address',
                            style: style.boldLabel(),
                        ),

                        Text('Enter your email address to get the password reset code',
                            style: style.simpleLabel(),
                        ),
                        SizedBox(height: 20),

                        TextField(
                            decoration: style.textInputDecoration('Enter your email address'),
                        ),
                        SizedBox(height: 20),

                        Align(
                            alignment: Alignment.centerRight,
                            child: FloatingActionButton(
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new PasswordPage())
                                    );
                                },
                                child: Icon(Icons.arrow_forward),
                                backgroundColor: style.appColor,
                                elevation: 0,
                            )
                        ),


                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

}