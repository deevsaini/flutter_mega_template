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

class accountCreateSuccess extends StatefulWidget {
  accountCreateSuccess({Key? key}) : super(key: key);

  static const String page_id = "Account Create Success";

  @override
  _accountCreateSuccessState createState() => _accountCreateSuccessState();
}

class _accountCreateSuccessState extends State<accountCreateSuccess> {
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            'Your account was successfully created. Now let\'s buy/sell your car.',
            textAlign: TextAlign.center,
          ),
        ),
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
            child: Text('CONTINUE'),
            style: simpleButton(),
          ),
        ),
      ],
    );
  }
}
