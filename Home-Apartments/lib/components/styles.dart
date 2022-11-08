/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

const appColor = Color(0xFF263A96);
const appColor2 = Color(0xFFFF9800);
const backgroundColor = Color.fromARGB(255, 243, 243, 243);

boldHeading(val) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Text(
      val,
      style: TextStyle(fontSize: 22, fontFamily: 'bold', color: appColor),
    ),
  );
}

boldBlue(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 22, fontFamily: 'bold', color: appColor),
  );
}

blackBoldHeading(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 20, fontFamily: 'bold', color: Colors.black),
  );
}

greyText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 14, color: Colors.black54),
    ),
  );
}

greyTextSmall(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 12, color: Colors.black54),
    ),
  );
}

orangeText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 14, color: Colors.orange),
    ),
  );
}

blackText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 14, fontFamily: 'bold'),
    ),
  );
}

blackBoldText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 18, fontFamily: 'bold'),
  );
}

appColorText(val) {
  return Container(
    child: Text(
      val,
      style: TextStyle(fontSize: 16, fontFamily: 'bold', color: appColor),
    ),
  );
}

textField(hint, icn) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(38.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: TextField(
        onChanged: (String txt) {},
        style: const TextStyle(
          fontSize: 18,
        ),
        cursorColor: appColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          suffixIcon: Icon(
            icn,
            color: Colors.black12,
          ),
        ),
      ),
    ),
  );
}

textFieldno(hint) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(38.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: TextField(
        onChanged: (String txt) {},
        style: const TextStyle(
          fontSize: 18,
        ),
        cursorColor: appColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    ),
  );
}

imageButton(image, name) {
  return ElevatedButton.icon(
    icon: Image.asset(
      image,
      width: 24,
      height: 24,
    ),
    label: Text(name),
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.black,
      shadowColor: Colors.black38,
      elevation: 5,
      padding: EdgeInsets.all(16),
      shape: (RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      )),
    ),
  );
}

SearchBox(hint, ontap) {
  return Container(
    color: Colors.transparent,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(38.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 8.0),
              ],
            ),
            child: TextField(
              onChanged: (String txt) {},
              style: const TextStyle(
                fontSize: 18,
              ),
              cursorColor: appColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        GestureDetector(
          onTap: ontap,
          child: CircleAvatar(
            backgroundColor: appColor,
            radius: 24,
            child: Icon(Icons.filter_list_outlined, color: Colors.white),
          ),
        )
      ],
    ),
  );
}
