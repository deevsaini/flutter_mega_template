/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

const appColor = Color(0xFFE52346);

contentButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    color: Color(0xFFE52346),
  );
}

contentButtonStyle2() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFFE52346),
  );
}

FbButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFF475A95),
  );
}

TwButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFF5DA1F2),
  );
}

otherButton() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    color: Color(0xFF6DD8D2),
  );
}

borderButton() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    border: Border.all(color: Color(0xFF6DD8D2)),
  );
}
