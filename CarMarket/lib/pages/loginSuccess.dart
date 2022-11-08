/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/tabs.dart';
import 'package:flutter/material.dart';

class loginSuccess extends StatefulWidget {
  loginSuccess({Key? key}) : super(key: key);

  static const String page_id = "Login Success";

  @override
  _loginSuccessState createState() => _loginSuccessState();
}

class _loginSuccessState extends State<loginSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          'AWESOME!',
          style: TextStyle(
            fontFamily: 'medium',
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Login successfully'),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            },
            child: Text('LET\'S START APP'),
            style: simpleButton(),
          ),
        ),
      ],
    );
  }
}
