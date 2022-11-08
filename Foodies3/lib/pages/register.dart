/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/tabs.dart';
import '../helper/style.dart' as style;

class RegisterPage extends StatefulWidget {
    RegisterPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Register';

    @override
    State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


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

                        Text('Create New Account',
                            style: style.boldTitle(),
                        ),
                        SizedBox(height: 24),

                        TextField(
                            decoration: style.textInputDecoration('Full Name'),
                        ),
                        SizedBox(height: 20),
                        TextField(
                            decoration: style.textInputDecoration('Email ID'),
                        ),
                        SizedBox(height: 20),
                        TextField(
                            decoration: style.textInputDecoration('Password'),
                        ),
                        SizedBox(height: 20),
                        TextField(
                            decoration: style.textInputDecoration('Phone Number'),
                        ),
                        SizedBox(height: 20),
                        TextField(
                            decoration: style.textInputDecoration('Your Location'),
                        ),
                        SizedBox(height: 20),
                        TextField(
                            decoration: style.textInputDecoration('Date of Birth'),
                        ),
                        SizedBox(height: 20),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new TabsExample())
                                    );
                                },
                                child: Text('Continue'),
                                style: style.simpleButton(),
                            ),
                        )
                    ],
                ),
            ),
        );
    }

}
