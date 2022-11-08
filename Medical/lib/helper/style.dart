/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF2b78d4);
const secondColor = Color(0xFF4abfc6);
const darkColor = Color(0xFF333333);
const lightColor = Color(0xFF666666);

simpleInputIconText(text, icn) {
  return InputDecoration(
    hintText: "$text",
    hintStyle: TextStyle(color: Colors.white),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white54),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white54),
    ),
    prefixIcon: icn,
  );
}

simpleButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: secondColor,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(60),
    // padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}

simpleInputText(text) {
  return InputDecoration(
    hintText: "$text",
    border: OutlineInputBorder(),
    contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
  );
}
