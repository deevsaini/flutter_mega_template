/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appBackColor = Color.fromARGB(255, 248,250,251);

const appColor = Color.fromARGB(255, 77, 124, 254);

const appGrey = Color.fromARGB(255, 159, 174, 193);

simpleButton() {
    return ElevatedButton.styleFrom(
        primary: appColor,
        padding: EdgeInsets.symmetric(vertical: 14),
        elevation: 0,
        textStyle: TextStyle(
            fontFamily: 'medium',
            fontSize: 15,
            letterSpacing: 0.5
        ),
    );
}

borderBottom() {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 1,
                color: (Colors.grey[300])!
            )
        )
    );
}

inputTextDecoration(val) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: '$val',
        hintStyle: TextStyle(
            fontFamily: 'medium',
            color: appGrey
        ),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16)
    );
}