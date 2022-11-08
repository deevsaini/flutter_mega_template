/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class ResetPasswordPage extends StatefulWidget {
    ResetPasswordPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Reset Password';

    @override
    State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {

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

                        Text('Reset Password',
                            style: style.boldTitle(),
                        ),
                        SizedBox(height: 10),

                        Text('Enter your new password and confirm.',
                            style: TextStyle(
                                color: style.appGreyText
                            ),
                        ),
                        SizedBox(height: 24),

                        TextField(
                          decoration: style.textInputDecoration('New Password'),
                        ),
                        SizedBox(height: 20),

                        TextField(
                          decoration: style.textInputDecoration('Confirm Password'),
                        ),
                        SizedBox(height: 20),

                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Done'),
                                style: style.simpleButton(),
                            ),
                        )
                    ],
                ),
            ),
        );
    }

}
