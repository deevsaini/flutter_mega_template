/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'dart:math' as math;

const appColor = Color(0xFFde8662);
const appColor2 = Color(0xFF000000);
const backgroundColor = Color.fromARGB(255, 243, 243, 243);

centerHeading(text) {
  return Text(
    text.toUpperCase(),
    style: TextStyle(
        color: Colors.black87,
        fontFamily: 'regular',
        fontSize: 18,
        letterSpacing: 6),
  );
}

sepLine() {
  return Container(
    width: 80,
    child: Row(
      children: [
        Expanded(
            child: Container(
          height: 1,
          color: Colors.black26,
        )),
        Transform.rotate(
          angle: 90 * math.pi / 120,
          child: Icon(
            Icons.square_outlined,
            size: 10,
            color: Colors.black38,
          ),
        ),
        Expanded(
            child: Container(
          height: 1,
          color: Colors.black26,
        )),
      ],
    ),
  );
}

textButton(val) {
  return TextButton(
    style: TextButton.styleFrom(
      textStyle: TextStyle(fontSize: 20),
    ),
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(val,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'regular',
                letterSpacing: 3,
                fontSize: 18,
                height: 1.5)),
        Icon(
          Icons.arrow_forward,
          size: 18,
          color: Colors.black,
        ),
      ],
    ),
  );
}

boldText(text) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.black87,
      fontSize: 16,
    ),
  );
}
