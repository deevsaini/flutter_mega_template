/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import './ConstancePage.dart' as style;

const appColor = Color(0xFFFF8B2C);

contentButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFF9E25),
          Color(0xFFFF7F30),
        ],
      ));
}

roundedButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFF9E25),
          Color(0xFFFF7F30),
        ],
      ));
}

roundedButtonWithOpacityStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFF9E25).withOpacity(0.4),
          Color(0xFFFF7F30).withOpacity(0.4),
        ],
      ));
}

roundedBorderButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      border: Border.all(color: style.appColor));
}

roundedBorder2ButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      border: Border.all(color: style.appColor));
}

FacebookButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    color: Color(0xFF4267B2),
  );
}

GoogleButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    border: Border.all(color: Colors.black),
    color: Colors.white,
  );
}
