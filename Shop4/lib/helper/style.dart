/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF1F4BA4);

headText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18);
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

greyText() {
  return TextStyle(fontSize: 14, fontFamily: 'regular', color: Colors.grey);
}

blueText() {
  return TextStyle(fontSize: 14, fontFamily: 'regular', color: appColor);
}

simpleBlueButton() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.white,
    elevation: 0,
    padding: EdgeInsets.symmetric(vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}

blueOutlineButton() {
  return ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: appColor,
    elevation: 0,
    padding: EdgeInsets.symmetric(vertical: 10),
    side: BorderSide(width: 1, color: appColor),
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

simpleInputIconText(text, icn) {
  return InputDecoration(
    hintText: "$text",
    hintStyle: TextStyle(color: Colors.black54),
    contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
    border: OutlineInputBorder(),
    suffixIcon: icn,
  );
}

sizeButton() {
  return BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: BorderRadius.all(Radius.circular(100)));
}

InputIconText(text, icn) {
  return InputDecoration(
    hintText: "$text",
    border: OutlineInputBorder(),
    contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
    prefixIcon: icn,
  );
}
