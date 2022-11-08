/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/slider.dart';
import 'package:social_network/widget/elevated_button.dart';
import '../components/styles.dart';

class Welcome extends StatefulWidget {
  static const String id = 'Welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return Container(
            color: appColor2,
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 52),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/s1.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(right: 42),
                  child: Text(
                    'The simplest way to share your moment!',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Medium',
                        color: Colors.white),
                  ),
                ),
                MyElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SliderScreen()));
                  },
                  colors: appColorBtn,
                  text: 'Get started',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
