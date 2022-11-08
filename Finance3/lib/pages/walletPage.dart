/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance3_fluttermarketplace/pages/cashInPage.dart';
import 'package:finance3_fluttermarketplace/pages/promotionPage.dart';
import 'package:flutter/material.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class walletPage extends StatefulWidget {
  walletPage({Key? key}) : super(key: key);

  static const String pageId = 'walletPage';

  @override
  State<walletPage> createState() => _walletPageState();
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

class _walletPageState extends State<walletPage> {
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
            children: [
              _buildProfile(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 70, bottom: 10, right: 10, left: 10),
                  child: Row(
                    children: [
                      _buildSlider('assets/images/c2.png'),
                      _buildSlider('assets/images/c2.png'),
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
                  '2 Account Connected',
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cashInPage()));
                  },
                  child: _buildContent(
                    Colors.lightBlue.withOpacity(0.2),
                    Icon(
                      Icons.payment,
                      color: Colors.lightBlue,
                    ),
                    'Payment Card',
                    '2 Card Connected',
                  ),
                ),
                _buildContent(
                  Colors.pink.withOpacity(0.2),
                  Icon(
                    Icons.airplane_ticket,
                    color: Colors.pink,
                  ),
                  'Services',
                  '3 Services Connected',
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => prmotionPage()));
                  },
                  child: _buildContent(
                    Colors.deepPurple.withOpacity(0.2),
                    Icon(
                      Icons.card_giftcard,
                      color: Colors.deepPurple,
                    ),
                    'Gift Card',
                    '3 Card Connected',
                  ),
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
                  'English',
                ),
                _buildContent(
                  Colors.lightBlue.withOpacity(0.2),
                  Icon(
                    Icons.settings,
                    color: Colors.lightBlue,
                  ),
                  'Settings',
                  '2 Settings',
                ),
                _buildContent(
                  Colors.pink.withOpacity(0.2),
                  Icon(
                    Icons.airplane_ticket,
                    color: Colors.pink,
                  ),
                  'Services',
                  '3 Services Connected',
                ),
                _buildContent(
                  Colors.deepPurple.withOpacity(0.2),
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.deepPurple,
                  ),
                  'Gift Card',
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
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: style.appColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'My Wallet',
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

  Widget _buildSlider(img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(clr, icn, txt1, txt2) {
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
                      Text(
                        '$txt1',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                      Text(
                        '$txt2',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
