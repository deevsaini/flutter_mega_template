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

const appColor = Color(0xFFFE4A79);

contentButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFE4B79),
          Color(0xFFFD6959),
        ],
      ));
}
