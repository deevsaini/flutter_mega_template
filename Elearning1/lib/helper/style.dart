/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF3AFFDF);

headText() {
  return TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.black);
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

simpleButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: appColor,
    onPrimary: Colors.black,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

simpleInputIconText(text, icn) {
  return InputDecoration(
      hintText: "$text",
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15)),
      prefixIcon: icn,
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16));
}

simpleInputText(text) {
  return InputDecoration(
    border: InputBorder.none,
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey.shade400),
    filled: true,
    fillColor: Colors.white,
  );
}

searchbar() {
  return TextField(
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Search here...',
      prefixIcon: Icon(Icons.search, color: Colors.black54),
      hintStyle: TextStyle(color: Colors.grey.shade400),
      filled: true,
      fillColor: Colors.white,
    ),
  );
}
