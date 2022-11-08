/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/forgot.dart';
import 'package:gofoodflutter/pages/tabs.dart';
import '../helper/style.dart' as style;

class LoginPage extends StatefulWidget {
    LoginPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Login';

    @override
    State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


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
          bottomNavigationBar: _buildBottomContainer(),
      );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                padding: EdgeInsets.all(16),
                child: Column(
                    children: [
                          
                        Image.asset('assets/images/logo.png'),
                        Text('The best of food for you!',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                            ),
                        ),

                        SizedBox(height: 100),
                      
                        TextField(
                            decoration: style.textInputDecoration('Username'),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: style.textInputDecoration('Password'),
                        ),
                        SizedBox(height: 20),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                                onTap: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new ForgotPage())
                                    );
                                },
                                child: Text('Forgot Password?',
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                ),
                            ),
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
                                child: Text('Sign In'),
                                style: style.simpleButton(),
                            ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Sign In with Facebook'),
                                style: facebookButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    facebookButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            elevation: 0,
            primary: Color.fromARGB(255, 0, 148, 254),
            onPrimary: Colors.white,
            textStyle: style.buttonText()
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            child: RichText(
              textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'You don\'t have an account? ',
                    style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'regular'),
                    children: <TextSpan>[
                        TextSpan(text: 'Sign up',
                            style: TextStyle(color: style.appColor)
                        ),
                    ],
                ),
            ),
        );
    }

}
