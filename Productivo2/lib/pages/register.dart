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

class RegisterPage extends StatefulWidget {
    RegisterPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Welcome';

    @override
    State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

    bool check = true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: style.appBackColor,
                elevation: 0,
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                    boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                        )
                    ],
                    borderRadius: BorderRadius.all(
                        Radius.circular(8)
                    ),
                    color: Colors.white
                ),
                child: Column(
                    children: [
                        Text('Create new account',
                            style: TextStyle(
                                fontFamily: 'medium',
                                fontSize: 18
                            ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                            decoration: textFieldDecoration('Enter your email'),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            decoration: textFieldDecoration('Enter your password'),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            decoration: textFieldDecoration('Company name'),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            decoration: textFieldDecoration('Industry'),
                        ),
                        SizedBox(height: 16),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                Checkbox(
                                    value: check,
                                    activeColor: style.appColor,
                                    onChanged: (bool? val) {
                                        setState(() {
                                            this.check = !this.check;
                                        });
                                    }
                                ),
                                Expanded(child: Text('I agree with terms & conditions'))
                            ],
                        ),
                        SizedBox(height: 16),
                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 20),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('SIGN UP'),
                                style: style.simpleButton(),
                            )
                        ),

                        Text('Sign up with social profile',
                            style: TextStyle(
                                color: style.appGrey,
                                fontFamily: 'medium',
                                fontSize: 15
                            ),
                        ),
                        SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                                    margin: EdgeInsets.symmetric(horizontal: 6),
                                    decoration: outlineButton(),
                                    child: Icon(Icons.facebook, color: style.appGrey),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                                    margin: EdgeInsets.symmetric(horizontal: 4),
                                    decoration: outlineButton(),
                                    child: Icon(Icons.facebook, color: style.appGrey),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                                    margin: EdgeInsets.symmetric(horizontal: 4),
                                    decoration: outlineButton(),
                                    child: Icon(Icons.facebook, color: style.appGrey),
                                )
                            ],
                        ),

                    ],
                ),
            ),
        );
    }

    textFieldDecoration(val) {
        return InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 248,250,251),
            hintText: '$val',
            hintStyle: TextStyle(
                fontFamily: 'medium',
                color: style.appGrey
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16)
        );
    }

    outlineButton() {
        return BoxDecoration(
            border: Border.all(
                width: 1,
                color: (Colors.grey[300])!
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(3)
            )
        );
    }
}
