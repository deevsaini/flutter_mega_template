/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/pages/shopYouSelect.dart';

const appColor = Color(0xFF0A8791);
const secondaryColor = Color(0xFFFBA83C);
const greyColor = Color(0xFFC2C2CB);
const darkColor = Color(0xFF0E122B);

headText() {
  return TextStyle(fontSize: 18.0, fontFamily: 'medium', color: Colors.black);
}

regularText() {
  return TextStyle(fontFamily: 'regular', fontSize: 14);
}

boldText() {
  return TextStyle(fontSize: 24, fontFamily: 'bold', color: Colors.black);
}

mediumText() {
  return TextStyle(fontSize: 16, fontFamily: 'medium', color: Colors.black);
}

simpleButton() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(60),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

simpleInputIconText(text, icn) {
  return InputDecoration(
    hintText: "$text",
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10)),
    prefixIcon: icn,
  );
}

shopContainer() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/burger.jpg',
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mc Donald\'S',
                        style: mediumText(),
                      ),
                      Icon(
                        Icons.bookmark,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: secondaryColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Burger',
                        style: TextStyle(fontSize: 14, color: greyColor),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: greyColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2.1 km',
                        style: TextStyle(fontSize: 14, color: greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: secondaryColor,
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(fontFamily: 'medium'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: greyColor,
                          ),
                          Text(
                            '10 min',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call_outlined,
                            color: Colors.green,
                          ),
                          Text(
                            'Contact',
                            style: TextStyle(fontFamily: 'medium'),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ],
    ),
  );
}
