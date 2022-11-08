/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF084FC8);
const darkColor = Color(0xFF05204f);

darkText() {
  return TextStyle(
      fontFamily: 'medium', color: Color(0xFF05204f), fontSize: 18);
}

greyText() {
  return TextStyle(fontFamily: 'regular', color: Colors.grey, fontSize: 14);
}

boldText() {
  return TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.black);
}

headText() {
  return TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.black);
}

mediumText() {
  return TextStyle(fontSize: 16, fontFamily: 'medium');
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

simpleButton() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}

simpleInputIconText(text, icn) {
  return InputDecoration(
    hintText: "$text",
    border: InputBorder.none,
    prefixIcon: icn,
  );
}

loginButton() {
  return ElevatedButton.styleFrom(
      primary: appColor,
      onPrimary: Colors.white,
      minimumSize: const Size.fromHeight(60),
      // padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));
}
