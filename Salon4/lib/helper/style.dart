/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor =  Color.fromARGB(255, 234, 79, 144);
const appColor2 =  Color.fromARGB(255, 239, 64, 71);

inputLabel() {
    return TextStyle(
        fontFamily: 'medium',
        fontSize: 14,
        color: appColor
    );
}

textInputDecoration(val) {
    return InputDecoration(
        hintText: '$val',
        labelStyle: TextStyle(fontFamily: 'medium'),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        border: outlineBorder(),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder()
    );
}

outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        borderSide: BorderSide(
            color: (Colors.grey[200])!,
            width: 2
        )
    );
}

buttonContainer() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end : Alignment.topLeft,
            colors: [appColor2,appColor],
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(25)
        )
    );
}

roundButton() {
    return ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),
        elevation: 0
    );
}

socialContainer(color1) {
    return BoxDecoration(
        border: Border.all(
          color: color1,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(25)
        )
    );
}

socialBtnText(color2) {
    return TextStyle(
        color: color2,
        fontFamily: 'medium',
        fontSize: 14
    );
}

iconContainer(color2) {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(100)
        ),
        color: color2
    );
}

appBarDecoration() {
    return BoxDecoration(
        gradient: LinearGradient(
            colors: [appColor,appColor2],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.5, 1.0],
        )
    );
}

pageTitleText() {
    return TextStyle(
        fontFamily: 'medium',
        fontSize: 18
    );
}

roundImage(val) {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(5)
        ),
        image: DecorationImage(
            image: AssetImage(val),
            fit: BoxFit.cover,
            alignment: Alignment.center
        )
    );
}

squareImage(val) {
    return BoxDecoration(
        image: DecorationImage(
            image: AssetImage(val),
            fit: BoxFit.cover,
            alignment: Alignment.center
        )
    );
}

cardBox() {
      return BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(5)
          )
      );
}

avatarImage(val) {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(100)
        ),
        image: DecorationImage(
            image: AssetImage('$val'),
            fit: BoxFit.cover,
        )
    );
}