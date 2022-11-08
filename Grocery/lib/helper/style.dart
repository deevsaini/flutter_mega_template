/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 8, 194, 94);

inputTextFieldDecoration(val, icn) {
    return InputDecoration(
        contentPadding: EdgeInsets.all(0),
        labelText: '$val',
        floatingLabelStyle: TextStyle(color: Colors.grey),
        suffixIcon: icn != '' ? Icon(icn, color: appColor) : null,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                width: 2,
                color: (Colors.grey[300])!
            )
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                width: 2,
                color: appColor
            )
        ),
    );
}

simpleButton() {
    return ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        primary: appColor,
        onPrimary: Colors.white,
        elevation: 0,
        textStyle: TextStyle(
            fontFamily: 'medium',
            letterSpacing: 0.5,
            fontSize: 16
        )
    );
}

outlineButton() {
    return OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        elevation: 0,
        primary: Colors.black,
        textStyle: TextStyle(
          fontFamily: 'medium',
          letterSpacing: 0.5,
          fontSize: 16,
        )
    );
}

shadowContainer() {
    return BoxDecoration(
        boxShadow: [
            BoxShadow(
                color: (Colors.grey[200])!,
                blurRadius: 5.0,
                offset: Offset(
                  0.0,
                  0.0,
                )
            ),
        ],
        borderRadius: BorderRadius.all(
            Radius.circular(5)
        ),
        color: Colors.white
    );
}

pageTitle() {
    return TextStyle(
        color: Colors.black,
        fontFamily: 'semi-bold',
        fontSize: 20
    );
}

roundImage(val) {
    return BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(
            Radius.circular(16)
        ),
        image: DecorationImage(
            image: AssetImage('$val'),
            fit: BoxFit.cover
        )
    );
}

bottomBorder() {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 1,
                color: (Colors.grey[300])!
            )
        )
    );
}

offContainer() {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(5)
        ),
        color: Color.fromARGB(255, 255,185,48)
    );
}

offLabel() {
    return TextStyle(
        color: Colors.white,
        fontFamily: 'medium'
    );
}