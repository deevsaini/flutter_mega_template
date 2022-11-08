/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF1ED760);

headText() {
  return TextStyle(fontSize: 18, fontFamily: 'semi-bold', color: Colors.white);
}

appButton() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.black,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
