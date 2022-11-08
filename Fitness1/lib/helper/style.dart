/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF96B2FE);
const secondaryColor = Color(0xFFc58bf2);

headText() {
  return TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.black);
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

boldText() {
  return TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.black);
}

mediumText() {
  return TextStyle(fontSize: 16, fontFamily: 'medium');
}

simpleButton() {
  return ElevatedButton.styleFrom(
      primary: appColor,
      onPrimary: Colors.white,
      minimumSize: const Size.fromHeight(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ));
}

simpleInputIconText(text, icn) {
  return InputDecoration(
    hintText: "$text",
    border: InputBorder.none,
    prefixIcon: icn,
  );
}

elevatedButton(text) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(appColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, fontFamily: 'medium'),
      ),
    ),
    onPressed: () {},
  );
}
