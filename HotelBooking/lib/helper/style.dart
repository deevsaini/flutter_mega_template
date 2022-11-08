/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 85, 56, 211);
const appColor2 = Color.fromARGB(255, 119, 20, 161);

appBarDecoration() {
    return BoxDecoration(
        gradient: LinearGradient(
            colors: [appColor,appColor2],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
        )
    );
}

pageTitleText() {
    return TextStyle(
        fontFamily: 'semi-bold',
        fontSize: 18,
        color: Colors.white
    );
}

textInputStyle() {
    return TextStyle(
        color: Colors.white,
        fontFamily: 'semi-bold'
    );
}

textInputDecoration(val) {
    return InputDecoration(
        labelText: '$val',
        labelStyle: TextStyle(color: Colors.white, fontFamily: 'regular'),
        border: textInputBorder(),
        enabledBorder: textInputBorder(),
        focusedBorder: textInputBorder(),
        contentPadding: EdgeInsets.all(0),
        floatingLabelBehavior: FloatingLabelBehavior.auto
    );
}

textInputDecorationSimple(val) {
    return InputDecoration(
        hintText: '$val',
        hintStyle: TextStyle(color: Colors.white, fontFamily: 'regular'),
        border: textInputBorder(),
        enabledBorder: textInputBorder(),
        focusedBorder: textInputBorder(),
        contentPadding: EdgeInsets.all(0),
        floatingLabelBehavior: FloatingLabelBehavior.auto
    );
}

textInputBorder() {
    return UnderlineInputBorder(
        borderSide: BorderSide(
            color: Colors.white60
        ),
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

colorLabel() {
    return TextStyle(
        fontSize: 18,
        fontFamily: 'semi-bold',
        color: appColor
    );
}

greyLabel() {
    return TextStyle(
        color: Colors.grey
    );
}