/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/helper/style.dart' as style;
import 'package:food2/pages/login.dart';

class getStartScreen extends StatefulWidget {
  getStartScreen({Key? key}) : super(key: key);

  static const String page_id = "Get Start";

  @override
  _getStartScreenState createState() => _getStartScreenState();
}

class _getStartScreenState extends State<getStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E5EB),
      body: _buildBody(),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            child: Text(
              'Get Started',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            style: style.simpleButton(),
          )),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/slide1.png'),
          )
        ],
      ),
    );
  }
}
