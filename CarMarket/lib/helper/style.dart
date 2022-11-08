/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFFF9C33F);
const greenColor = Color(0xFF27CC6A);
const lightColor = Color(0xFFEFF2F7);

headText() {
  return TextStyle(fontFamily: 'medium', fontSize: 18, color: Colors.black);
}

greyText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14, color: Colors.grey);
}

simpleButton() {
  return ElevatedButton.styleFrom(
    primary: Color(0xFF000000),
    onPrimary: appColor,
    minimumSize: const Size.fromHeight(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

yellowButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: appColor,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

starContainer() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: appColor,
        size: 20,
      ),
      Icon(
        Icons.star,
        color: appColor,
        size: 20,
      ),
      Icon(
        Icons.star,
        color: appColor,
        size: 20,
      ),
      Icon(
        Icons.star,
        color: appColor,
        size: 20,
      ),
      Icon(
        Icons.star,
        color: Colors.grey,
        size: 20,
      ),
    ],
  );
}
