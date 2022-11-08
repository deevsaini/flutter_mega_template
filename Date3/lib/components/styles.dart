/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

const appColor = Color(0xFFf66d06);

redBtnStyle() {
  return ElevatedButton.styleFrom(
      primary: style.appColor,
      onPrimary: Colors.white,
      elevation: 0,
      padding: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)));
}

smallBtn() {
  return const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(3)),
      color: Color.fromARGB(255, 254, 76, 66));
}

redBorderBtn() {
  return ElevatedButton.styleFrom(
      primary: Colors.transparent,
      onPrimary: style.appColor,
      side: const BorderSide(color: style.appColor, width: 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      elevation: 0);
}

blackBorderBtn() {
  return ElevatedButton.styleFrom(
    primary: Colors.transparent,
    onPrimary: Colors.black,
    shadowColor: Colors.transparent,
    elevation: 0,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
        side: const BorderSide(width: 1)),
  );
}

smallBlackBorderBtn() {
  return ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.black,
    shadowColor: Colors.transparent,
    elevation: 0,
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
        side: const BorderSide(width: 1, color: Colors.grey)),
  );
}

textInputDecoration(val) {
  return InputDecoration(
    labelText: '$val',
    labelStyle: const TextStyle(color: Colors.grey),
    border: inputBorder(),
    focusedBorder: inputBorder(),
    enabledBorder: inputBorder(),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
  );
}

textInputWithHelper(val, helper) {
  return InputDecoration(
    labelText: '$val',
    labelStyle: const TextStyle(color: Colors.grey),
    border: inputBorder(),
    helperText: '$helper',
    focusedBorder: inputBorder(),
    enabledBorder: inputBorder(),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
  );
}

inputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(3)),
    borderSide: BorderSide(
      width: 1.5,
      color: Colors.grey,
    ),
  );
}

textUnderlineInputDecoration(val) {
  return InputDecoration(
    labelText: '$val',
    labelStyle: const TextStyle(color: Colors.grey),
    border: underlineBorder(),
    focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(width: 1.5, color: Colors.teal)),
    enabledBorder: underlineBorder(),
    contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  );
}

underlineBorder() {
  return const UnderlineInputBorder(
      borderSide: BorderSide(width: 1.5, color: Colors.grey));
}

prefixInputDecoration(val, helper) {
  return InputDecoration(
    labelText: '$val',
    labelStyle: const TextStyle(color: Colors.grey),
    prefixIcon: const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Text('+91 |'),
    ),
    prefixStyle: const TextStyle(color: Colors.grey),
    helperText: '$helper',
    border: style.inputBorder(),
    focusedBorder: style.inputBorder(),
    enabledBorder: style.inputBorder(),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
  );
}
