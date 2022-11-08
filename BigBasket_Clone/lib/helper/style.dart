/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 104, 159, 56);
const appRed = Color.fromARGB(255, 230, 96, 103);
const appBackColor = Color.fromARGB(255, 238, 238, 238);
const appBackDark = Color.fromARGB(255, 239, 240, 244);

simpleButton() {
    return ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        primary: appRed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        elevation: 0,
        textStyle: TextStyle(
            fontFamily: 'medium',
            fontSize: 16,
            letterSpacing: 0.5
        ),
    );
}

pageTitle() {
    return TextStyle(
        fontSize: 18,
        fontFamily: 'medium',
        letterSpacing: 0.5,
        color: Colors.black
    );
}

whitePageTitle() {
    return TextStyle(
        fontSize: 18,
        fontFamily: 'medium',
        letterSpacing: 0.5,
    );
}

searchInputBox(val) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintText: '$val',
        border: searchBoxBorder(),
        enabledBorder: searchBoxBorder(),
        focusedBorder: searchBoxBorder()
    );
}

searchBoxBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(5)
        ),
        borderSide: BorderSide(
            width: 0,
            color: Colors.transparent
        )
    );
}


textInputDecoration(val) {
    return InputDecoration(
        labelText: '$val',
        labelStyle: TextStyle(color: Colors.grey, fontFamily: 'medium', fontSize: 14),
        border: underlineBorder(),
        enabledBorder: underlineBorder(),
        focusedBorder: underlineBorder()
    );
}

underlineBorder() {
    return UnderlineInputBorder(
        borderSide: BorderSide(
            width: 1,
            color: (Colors.grey[300])!
        )
    );
}

borderBottom() {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 1,
                color: (Colors.grey[300])!
            )
        ),
        color: Colors.white
    );
}

addButton() {
    return ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 8),
        primary: appRed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        elevation: 0,
        textStyle: TextStyle(
            fontFamily: 'medium',
            fontSize: 14,
            letterSpacing: 0.5
        ),
    );
}

outlineDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(3)
        ),
        border: Border.all(
            width: 1,
            color: (Colors.grey[300])!
        )
    );
}

blackButton() {
    return ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 74, 74, 74),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0)
        ),
        elevation: 0,
        textStyle: TextStyle(
            fontFamily: 'medium',
            fontSize: 16,
            letterSpacing: 0.5
        )
    );
}