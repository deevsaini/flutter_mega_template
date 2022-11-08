/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  static const String page__id = "Welcome";

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: __buildbottombar(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/yoga.webp',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Welcome,Stefani',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'bold', fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You are all set now, let\'s reach your \n goals together with us',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'regular', fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget __buildbottombar() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        child: const Text(
          "Go To Home",
          style: TextStyle(fontFamily: 'semi-bold'),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => tabs())));
        },
        style: style.simpleButton(),
      ),
    );
  }
}
