/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFFFFA688);
const appColor2 = Color(0xFF272D69);
const appColorBtn = Color(0xFFEF5859);

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
      style: TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.white),
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

boldText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'bold'),
  );
}

blackBoldText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 18, fontFamily: 'bold', color: Colors.black),
  );
}

centerText(val) {
  return Text(
    val,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 14, color: Colors.white),
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

smallText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 10, color: Colors.black54),
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
    child: TextField(
      decoration: InputDecoration(
        labelText: hint,
        suffixIcon: Icon(
          icn,
          size: 18,
          color: Colors.black12,
        ),
        labelStyle: TextStyle(color: Colors.black54, fontSize: 12),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: appColor),
        ),
      ),
    ),
  );
}

SearchBox() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: const BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(30))),
    child: TextField(
      onChanged: (String txt) {},
      style: const TextStyle(
        fontSize: 14,
      ),
      cursorColor: appColor,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black45,
        ),
      ),
    ),
  );
}
