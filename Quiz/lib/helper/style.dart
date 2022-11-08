/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF7B5CF3);
const styleColor = Color(0xFF619FF2);

headText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18);
}

whiteHeadText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18, color: Colors.white);
}

simpleButton(route, text) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [styleColor, appColor],
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

simpleInput(label, text) {
  return InputDecoration(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    labelText: label,
    hintText: text,
  );
}

iconInput(text, label, icon) {
  return InputDecoration(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    hintText: text,
    labelText: label,
    suffixIcon: icon,
  );
}
