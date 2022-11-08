/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 80, 98, 193);
const appBack = Color.fromARGB(255, 247, 246, 250);
const appLight = Color.fromARGB(255, 236, 250, 251);
const appBlue = Color.fromARGB(255, 165, 232, 240);
const appDarkBlue = Color.fromARGB(255, 59, 131, 217);

simpleButton() {
    return ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(16)
          ),
        ),
        textStyle: TextStyle(
            fontFamily: 'medium',
            fontSize: 15
        ),
        primary: appColor
    );
}

inputTextDecoration(val, clr) {
    return InputDecoration(
        hintText: '$val',
        filled: true,
        fillColor: clr == '' ? Color.fromARGB(255, 236,250,251) : clr,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(16)
            ),
            borderSide: BorderSide(
                width: 1.5,
                color: Colors.transparent,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(16)
            ),
            borderSide: BorderSide(
                width: 1.5,
                color: Color.fromARGB(255, 165,232,240)
            )
        )
    );
}

pageTitle() {
    return TextStyle(
        fontSize: 30,
        fontFamily: 'semi-bold'
    );
}

subTitle() {
    return TextStyle(
        color: Colors.grey,
        fontSize: 16
    );
}

simpleText() {
    return TextStyle(
        fontSize: 16,
        fontFamily: 'medium'
    );
}

whiteContainer() {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(16)
        ),
        color: Colors.white
    );
}

roundImage(val) {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(100)
        ),
        image: DecorationImage(
            image: AssetImage(val),
            fit: BoxFit.cover
        )
    );
}

whiteButton() {
    return ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14),
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(16)
            ),
        ),
        textStyle: TextStyle(
            fontFamily: 'medium',
            fontSize: 15
        ),
        primary: Colors.white,
        onPrimary: appDarkBlue
    );
}

cardDecoration() {
    return BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.all(
            Radius.circular(16)
        )
    );
}

boldLabel() {
    return TextStyle(
        color: Colors.white,
        fontFamily: 'medium'
    );
}

smallLabel() {
    return TextStyle(
        color: Colors.white,
        fontSize: 12
    );
}