/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/pages/categories.dart';
import 'package:realestate/pages/favAgent.dart';
import 'package:realestate/pages/message.dart';
import 'package:realestate/pages/myBookings.dart';
import 'package:realestate/pages/profile.dart';
import 'package:realestate/pages/setting.dart';

const appColor = Color(0xFF06555C);

headText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18, color: Colors.black);
}

blueButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: Color(0xFF00BD9F),
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}

greenButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: appColor,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );
}

simpleInputText(text, icn) {
  return InputDecoration(
    border: InputBorder.none,
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey.shade600),
    prefixIcon: icn,
    prefixIconColor: appColor,
    filled: true,
    fillColor: Colors.transparent,
  );
}

suffixIconText(text, icn) {
  return InputDecoration(
    border: InputBorder.none,
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey.shade600),
    suffixIcon: icn,
    prefixIconColor: appColor,
    filled: true,
    fillColor: Colors.transparent,
  );
}

InputText(text) {
  return InputDecoration(
    border: InputBorder.none,
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey.shade600),
    prefixIconColor: appColor,
    filled: true,
    fillColor: Colors.white,
  );
}

ratingContainer() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
      Icon(
        Icons.star,
        color: Colors.grey,
        size: 15,
      ),
    ],
  );
}
