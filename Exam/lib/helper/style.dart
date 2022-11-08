/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF4785EA);

headText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18, color: Colors.black);
}

regularText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14, color: Colors.black);
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

inputText(lable, hint) {
  return InputDecoration(
    border: UnderlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    labelText: lable,
    hintText: hint,
  );
}

inputIconText(text) {
  return InputDecoration(
    border: UnderlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    labelText: text,
    suffixIcon: Icon(Icons.visibility),
  );
}
