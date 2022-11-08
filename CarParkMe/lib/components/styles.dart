/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF0db665);
const appColor2 = Color(0xFF2587ce);
const appColor3 = Color(0xFFa5a5a5);

const backgroundColor = Color.fromARGB(255, 243, 243, 243);

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

blackText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 14, fontFamily: 'bold'),
    ),
  );
}

blackBoldText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 16, fontFamily: 'bold'),
  );
}

blackHeading(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 20, fontFamily: 'bold'),
  );
}

appColorText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 14, fontFamily: 'bold', color: appColor),
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

SearchBox(hint) {
  return Container(
    color: Colors.transparent,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: TextField(
        onChanged: (String txt) {},
        style: const TextStyle(
          fontSize: 18,
        ),
        cursorColor: appColor,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black26),
            prefixIcon: Icon(
              Icons.location_on,
              color: Colors.black26,
            )),
      ),
    ),
  );
}
