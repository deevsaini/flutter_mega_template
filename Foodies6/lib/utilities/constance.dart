/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

const appColor = Color(0xFFFEBC34);
const itemColor = Color(0xFFF15E38);

contentButtonStyle1() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFF15E38),
          Color(0xFFFE9D16),
        ],
      ));
}

contentButtonStyle2() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFFFD6E56),
          Color(0xFFFE9454),
        ],
      ));
}

categoriesButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    color: Color(0xFFF15B3A),
  );
}

categoriesButtonStyle2() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFFF15B3A),
  );
}

categoriesButtonStyle3() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFF3885FF),
  );
}

greyContentButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(0.0),
    ),
    color: Colors.grey,
  );
}

borderButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    border: Border.all(color: Colors.grey),
    color: Colors.white,
  );
}

borderButtonStyle2() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    border: Border.all(color: Colors.grey),
    color: Colors.white,
  );
}

smallButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFFFFA015),
  );
}

smallButtonStyle2() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFFF15B3A),
  );
}

ButtonWithOpacity1() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    color: Colors.red.withOpacity(0.2),
  );
}

ButtonWithOpacity2() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    color: Colors.green.withOpacity(0.2),
  );
}

greenButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    color: Color(0xFF1CB04A),
  );
}

greyButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    color: Color(0xFFF0F0F2),
  );
}

FacebookButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFF4267B2),
  );
}

GoogleButtonStyle() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFFEA4235),
  );
}
