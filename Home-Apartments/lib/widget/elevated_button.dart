/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class MyElevatedButton extends StatelessWidget {
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final text;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.height = 50.0,
    this.gradient = const LinearGradient(colors: [appColor, appColor2]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: appColor,
          onPrimary: Colors.white,
          shadowColor: appColor,
          elevation: 5,
          shape: (RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )),
        ),
        child: Text(
          text,
          style: TextStyle(fontFamily: 'medium'),
        ),
      ),
    );
  }
}
