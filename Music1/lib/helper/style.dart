/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFFE83515);
const secondColor = Color(0xFFF7594E);

headText() {
  return TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.white);
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14, color: Colors.white);
}

simpleButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: appColor,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(40),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );
}

simpleOutlineButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: Colors.transparent,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(40),
    shape: RoundedRectangleBorder(
        side: BorderSide(color: appColor, width: 2),
        borderRadius: BorderRadius.circular(5)),
  );
}

simpleInputText(text) {
  return InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(5.0),
    ),
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey.shade400),
    filled: true,
    fillColor: Colors.transparent,
  );
}

// decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//             colors: [
//               appColor,
//               secondColor,
//             ],
//           ),
//         ),
