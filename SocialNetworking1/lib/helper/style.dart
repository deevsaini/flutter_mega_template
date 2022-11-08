/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF504DE4);

headText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18, color: Colors.black);
}

whiteHeadText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18, color: Colors.white);
}

blueButton() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}

simpleInput(text) {
  return InputDecoration(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    hintText: text,
  );
}
