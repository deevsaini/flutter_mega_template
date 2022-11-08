/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 249, 100, 0);
const appGrey = Color.fromARGB(255, 248, 249, 253);
const appGreyText = Color.fromARGB(255, 162, 170, 193);

textInputDecoration(val) {
    return InputDecoration(
        hintText: '$val',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        border: outlineBorder(),
        focusedBorder: outlineBorder(),
        enabledBorder: outlineBorder()
    );
}

outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
            width: 1,
            color: Color.fromARGB(255, 238, 241, 247)
        )
    );
}

simpleButton() {
    return ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        elevation: 0,
        primary: appColor,
        onPrimary: Colors.white,
        textStyle: buttonText()
    );
}

buttonText() {
    return TextStyle(
        fontFamily: 'medium',
        fontSize: 16,
        letterSpacing: 0.5
    );
}

topCornerRoundImage(val) {
    return BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        image: DecorationImage(
            image: AssetImage('$val'),
            fit: BoxFit.cover
        )
    );
}

leftCornerRoundImage(val) {
    return BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        image: DecorationImage(
            image: AssetImage('$val'),
            fit: BoxFit.cover
        )
    );
}

roundedImage(val) {
    return BoxDecoration(
        image: DecorationImage(
            image: AssetImage('$val'),
            fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(5)
        )
    );
}

radiusContainer() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
    );
}

smallTitle() {
    return TextStyle(
        fontSize: 17,
        fontFamily: 'medium'
    );
}

smallColorTitle() {
    return TextStyle(
        color: appColor
    );
}

pageTitle() {
    return TextStyle(
        fontSize: 18,
        fontFamily: 'medium',
        color: Colors.black
    );
}

whiteContainer() {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(8)
        ),
        color: Colors.white
    );
}

boldTitle() {
    return TextStyle(
        fontSize: 24,
        fontFamily: 'semi-bold'
    );
}

borderBottom() {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 1,
                color: Color.fromARGB(255, 204, 209, 226)
            )
        )
    );
}

textAreaDecoration(val) {
    return InputDecoration(
        filled: true,
        fillColor: appGrey,
        hintText: '$val',
        border: borderDecoration(),
        enabledBorder: borderDecoration(),
        focusedBorder: borderDecoration(),
    );
}

borderDecoration() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
    );
}