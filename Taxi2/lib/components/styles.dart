/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'dart:math' as math;

const appColor = Color(0xFF3bd38a);
const appColor2 = Color(0xFF000000);
const backgroundColor = Color.fromARGB(255, 243, 243, 243);

btnStyle() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 14),
  );
}

btnText(txt) {
  return Text(txt, style: TextStyle(fontSize: 16, fontFamily: 'semibold'));
}
