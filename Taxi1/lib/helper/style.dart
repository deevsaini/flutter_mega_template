/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 250, 192, 4);
const appGreen = Color.fromARGB(255, 68, 218, 157);

roundButton() {
    return ElevatedButton.styleFrom(
        primary: appColor,
        onPrimary: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),
        elevation: 0
    );
}

shadowContainer() {
    return BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75)
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )
    );
}

boldLabel() {
    return TextStyle(
        fontSize: 18,
        fontFamily: 'medium'
    );
}

simpleLabel() {
    return TextStyle(
        color: Colors.grey,
        fontSize: 14,
    );
}

textInputDecoration(val) {
    return InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintText: '$val',
        hintStyle: TextStyle(
            color: Colors.grey
        ),
        border: outlineBorder(),
        focusedBorder: outlineBorder(),
        enabledBorder: outlineBorder()
    );
}

textInputDecorationWithIcon(icn, clr, val) {
    return InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintText: '$val',
        prefixIcon: Icon(icn, color: clr, size: 16),
        hintStyle: TextStyle(
            color: Colors.grey
        ),
        border: outlineBorder(),
        focusedBorder: outlineBorder(),
        enabledBorder: outlineBorder()
    );
}


textInputDecorationWithIcons(icn, clr, val) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintText: '$val',
        prefixIcon: Icon(icn, color: clr, size: 16),
        suffixIcon: Icon(Icons.favorite_outline, color: Colors.grey, size: 16),
        hintStyle: TextStyle(
            color: Colors.grey
        ),
        border: outlineBorder(),
        focusedBorder: outlineBorder(),
        enabledBorder: outlineBorder()
    );
}

outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(8)
        ),
        borderSide: BorderSide(
            color: (Colors.grey[300])!
        )
    );
}

outlineButtonStyle() {
    return OutlinedButton.styleFrom(
        elevation: 0,
        side: BorderSide(
            color: Colors.black,
            width: 1,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
        ),
        primary: Colors.black,
        textStyle: TextStyle(
            fontSize: 16,
            fontFamily: 'medium'
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
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