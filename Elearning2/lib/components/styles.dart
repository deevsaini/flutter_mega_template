/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFFE35629);
const appColor2 = Color(0xFF65AAEB);
const appColorTint = Color(0xFFfceeea);

const backgroundColor = Color.fromARGB(255, 243, 243, 243);

blackHeading(val) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Text(
      val,
      style: TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.black),
    ),
  );
}

centerkHeading(val) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16),
    child: Text(
      val,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.black),
    ),
  );
}

blackHeadingSmall(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 20, fontFamily: 'bold', color: Colors.black),
  );
}

blackText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 14, color: Colors.black),
  );
}

blackBoldText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 16, fontFamily: 'medium', color: Colors.black),
  );
}

centerText(val) {
  return Text(
    val,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 14, color: Colors.black54),
  );
}

greyBoldText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 15, fontFamily: 'medium', color: Colors.black54),
  );
}

greyText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 14, color: Colors.black54),
  );
}

greyTextSmall(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 12, color: Colors.black54),
  );
}

appcolorText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 12, color: appColor2, fontFamily: 'medium'),
  );
}

colorText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 12, color: appColor, fontFamily: 'medium'),
  );
}

textField(hint, icn) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Container(
      child: TextField(
        onChanged: (String txt) {},
        style: const TextStyle(
          fontSize: 16,
        ),
        cursorColor: appColor,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(16)),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
          suffixIcon: Icon(
            icn,
            color: Colors.black12,
          ),
        ),
      ),
    ),
  );
}

SearchBox(hint) {
  return Container(
    child: TextField(
      onChanged: (String txt) {},
      style: const TextStyle(
        fontSize: 14,
      ),
      cursorColor: appColor,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(16)),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black45,
        ),
      ),
    ),
  );
}
