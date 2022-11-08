/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF4075D1);
const styleColor = Color(0xFF6635CC);

styleheadText() {
  return TextStyle(fontSize: 18.0, fontFamily: 'semi-bold', color: styleColor);
}

whiteHeadText() {
  return TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.white);
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

simpleWhiteText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14, color: Colors.white70);
}

blueButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: Color(0xFF4CAEDB),
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}

gradientButton(route, text) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          appColor,
          styleColor,
        ],
      ),
    ),
    child: InkWell(
      onTap: route,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'bold', fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

simpleInputText(text) {
  return InputDecoration(
    // border: InputBorder.none,
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    hintText: text,
    hintStyle: TextStyle(color: Colors.grey.shade600),
    filled: true,
    fillColor: Colors.transparent,
  );
}
