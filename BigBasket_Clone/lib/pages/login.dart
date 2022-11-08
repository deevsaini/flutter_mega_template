/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/verification.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Login';

    @override
    State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

    bool useEmail = true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Stack(
                children: [
                    Container(
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/back.png'),
                                fit: BoxFit.cover
                            )
                        ),
                    ),
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(top: 70),
                        child: Column(
                            children: [
                                Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)
                                        ),
                                        color: Colors.white
                                    ),
                                    child: Image.asset('assets/images/logo.png'),
                                ),
                                SizedBox(height: 30),
                                Text('Login/Signup',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'medium',
                                        color: Colors.white
                                    ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                                    width: double.infinity,
                                    decoration: whiteBox(),
                                    child: Column(
                                        children: [
                                            TextField(
                                                decoration: textInputDecoration(),
                                            ),
                                            SizedBox(height: 24),
                                            Container(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                        Navigator.push(context, new MaterialPageRoute(
                                                            builder: (context) => new VerificationPage())
                                                        );
                                                    },
                                                    child: Text('Continue'),
                                                    style: style.simpleButton(),
                                                ),
                                            ),
                                            SizedBox(height: 20),
                                            RichText(
                                                text: TextSpan(
                                                    text: 'By continuing, you agree to our ',
                                                    style: TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'regular'),
                                                    children: <TextSpan>[
                                                        TextSpan(text: 'Terms and Conditions ', style: TextStyle(color: Color.fromARGB(255, 56, 128, 255))),
                                                        TextSpan(text: 'and '),
                                                        TextSpan(text: 'Privacy Policy.', style: TextStyle(color: Color.fromARGB(255, 56, 128, 255))),
                                                    ],
                                                ),
                                            )
                                        ],
                                    ),
                                )
                            ],
                        ),
                    )
                ],
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
}