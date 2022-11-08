/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:salon/pages/CompleteSalonDetail.dart';

const appColor = Color(0xFF6D5AE7);
const greyTextColor = Color.fromARGB(255, 185, 196, 207);
const darkGreyText = Color.fromARGB(255, 225, 233, 241);

headText() {
  return TextStyle(
      fontSize: 18.0, fontFamily: 'semi-bold', color: Colors.black);
}

simpleText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

boldText() {
  return TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.black);
}

mediumText() {
  return TextStyle(fontSize: 16, fontFamily: 'medium');
}

simpleInputIconText(text, icn) {
  return InputDecoration(
    hintText: "$text",
    border: InputBorder.none,
    prefixIcon: icn,
  );
}

simpleButton() {
  return ElevatedButton.styleFrom(
      primary: Color(0xFF6D5AE7),
      onPrimary: Colors.white,
      minimumSize: const Size.fromHeight(60),
      // padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));
}

shopDetail(route) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
      children: [
        InkWell(
          onTap: route,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/salon.webp',
                    height: 90,
                    width: 95,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bella Renova',
                      style: headText(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '6391 Elgin St Celina Deliware 10299',
                      style: simpleText(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade600,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade600,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade600,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade600,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade600,
                              size: 20,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            Text('5km')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
