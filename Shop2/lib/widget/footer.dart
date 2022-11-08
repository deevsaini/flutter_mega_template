/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class footerMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _pageIcon('assets/images/instagramfill.png'),
                  _pageIcon('assets/images/twitter.png'),
                  _pageIcon('assets/images/youtube.png'),
                ],
              ),
              SizedBox(height: 20),
              sepLine(),
              SizedBox(height: 20),
              Column(
                children: [
                  _contactText("admin@initappz.com"),
                  _contactText("+91 111 1220"),
                  _contactText("08:00 - 22:00 - Everyday"),
                ],
              ),
              SizedBox(height: 20),
              sepLine(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _pagesButton("About"),
                  _pagesButton("Contact"),
                  _pagesButton("Blog"),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
        _copyright(),
      ],
    );
  }
}

_pagesButton(text) {
  return InkWell(
    onTap: () {},
    child: Container(
      child: Text(text, style: TextStyle(fontSize: 18, color: Colors.black)),
    ),
  );
}

_pageIcon(icn) {
  return IconButton(
    icon: ImageIcon(
      AssetImage(icn),
      color: Colors.black54,
      size: 24,
    ),
    onPressed: () {},
  );
}

_contactText(text) {
  return Container(
    padding: EdgeInsets.only(bottom: 10),
    child: Text(text, style: TextStyle(fontSize: 18, color: Colors.black54)),
  );
}

_copyright() {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Copyright \u{00A9}  logo All Rights Reserved. ",
              style: TextStyle(fontSize: 14, color: Colors.black54)),
        ],
      ));
}
