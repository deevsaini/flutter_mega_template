/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class notificationPage extends StatefulWidget {
  notificationPage({Key? key}) : super(key: key);

  static const String pageId = 'notificationPage';

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class CurveImage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 30);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _notificationPageState extends State<notificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              _buildProfile(),
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      _buildContent(
                        Colors.orange.withOpacity(0.2),
                        Icon(
                          Icons.account_balance,
                          color: Colors.orange,
                        ),
                        'Bank Account',
                        'Grab your hot promotion for food delievery',
                        '2 Account Connected',
                      ),
                      _buildContent(
                        Colors.lightBlue.withOpacity(0.2),
                        Icon(
                          Icons.payment,
                          color: Colors.lightBlue,
                        ),
                        'Payment Card',
                        'Grab your hot promotion for food delievery',
                        '2 Card Connected',
                      ),
                      _buildContent(
                        Colors.pink.withOpacity(0.2),
                        Icon(
                          Icons.airplane_ticket,
                          color: Colors.pink,
                        ),
                        'Services',
                        'Grab your hot promotion for food delievery',
                        '3 Services Connected',
                      ),
                      _buildContent(
                        Colors.deepPurple.withOpacity(0.2),
                        Icon(
                          Icons.card_giftcard,
                          color: Colors.deepPurple,
                        ),
                        'Gift Card',
                        'Grab your hot promotion for food delievery',
                        '3 Card Connected',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _buildTitile('WALLET MANAGEMENT'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Column(
              children: [
                _buildContent(
                  Colors.orange.withOpacity(0.2),
                  Icon(
                    Icons.account_balance,
                    color: Colors.orange,
                  ),
                  'Bank Account',
                  'Grab your hot promotion for food delievery',
                  '2 Account Connected',
                ),
                _buildContent(
                  Colors.lightBlue.withOpacity(0.2),
                  Icon(
                    Icons.payment,
                    color: Colors.lightBlue,
                  ),
                  'Payment Card',
                  'Grab your hot promotion for food delievery',
                  '2 Card Connected',
                ),
                _buildContent(
                  Colors.pink.withOpacity(0.2),
                  Icon(
                    Icons.airplane_ticket,
                    color: Colors.pink,
                  ),
                  'Services',
                  'Grab your hot promotion for food delievery',
                  '3 Services Connected',
                ),
                _buildContent(
                  Colors.deepPurple.withOpacity(0.2),
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.deepPurple,
                  ),
                  'Gift Card',
                  'Grab your hot promotion for food delievery',
                  '3 Card Connected',
                ),
              ],
            ),
          ),
          _buildTitile('SUPPORTS & SETTINGS'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Column(
              children: [
                _buildContent(
                  Colors.orange.withOpacity(0.2),
                  Icon(
                    Icons.language,
                    color: Colors.orange,
                  ),
                  'Languages',
                  'Grab your hot promotion for food delievery',
                  'English',
                ),
                _buildContent(
                  Colors.lightBlue.withOpacity(0.2),
                  Icon(
                    Icons.settings,
                    color: Colors.lightBlue,
                  ),
                  'Settings',
                  'Grab your hot promotion for food delievery',
                  '2 Settings',
                ),
                _buildContent(
                  Colors.pink.withOpacity(0.2),
                  Icon(
                    Icons.airplane_ticket,
                    color: Colors.pink,
                  ),
                  'Services',
                  'Grab your hot promotion for food delievery',
                  '3 Services Connected',
                ),
                _buildContent(
                  Colors.deepPurple.withOpacity(0.2),
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.deepPurple,
                  ),
                  'Gift Card',
                  'Grab your hot promotion for food delievery',
                  '3 Card Connected',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return ClipPath(
      clipper: CurveImage(),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: style.appColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Notifications',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'News',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitile(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(clr, icn, txt1, txt2, txt3) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: clr, borderRadius: BorderRadius.circular(10)),
                      child: icn,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          '$txt1',
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontFamily: 'bold', fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          '$txt2',
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          '$txt3',
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 10, color: Colors.lightBlue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
