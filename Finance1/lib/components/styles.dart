/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF68ab9f);
const appColor2 = Color(0xFFd28e5c);
const appColor3 = Color.fromARGB(255, 223, 166, 193);
const appColor4 = Color(0xFF000000);

const backgroundColor = Color.fromARGB(255, 243, 243, 243);

boldHeading(val) {
  return Container(
    padding: EdgeInsets.all(16),
    child: Text(
      val,
      style: TextStyle(fontSize: 20, fontFamily: 'medium'),
    ),
  );
}

greyText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 13, color: Colors.black54),
    ),
  );
}

blackText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 16, fontFamily: 'medium'),
    ),
  );
}

cardText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 16),
    ),
  );
}
