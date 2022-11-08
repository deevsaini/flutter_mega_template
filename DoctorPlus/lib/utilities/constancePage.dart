/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

const appColor = Color(0xFF14B4B4);
const itemColor = Color(0xFF2274FC);

contentButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF14B4B4),
          Color(0xFF51DBDB),
        ],
      ));
}

roundedButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF14B4B4),
          Color(0xFF51DBDB),
        ],
      ));
}

roundedButtonWithOpacityStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF14B4B4).withOpacity(0.4),
          Color(0xFF51DBDB).withOpacity(0.4),
        ],
      ));
}

roundedBorderButtonStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      border: Border.all(color: Colors.white));
}

roundedBorderButtonStyle2() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}

itemColorButtonStyle() {
  return BoxDecoration(
    color: style.itemColor,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}

appBarButtonStyle() {
  return BoxDecoration(
    border: Border.all(color: Colors.grey.shade300),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}

appBarItemClrButtonStyle() {
  return BoxDecoration(
    border: Border.all(color: style.itemColor),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
}
