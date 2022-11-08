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

class prmotionPage extends StatefulWidget {
  prmotionPage({Key? key}) : super(key: key);

  static const String pageId = 'prmotionPage';

  @override
  State<prmotionPage> createState() => _prmotionPageState();
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

class _prmotionPageState extends State<prmotionPage> {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              _buildProfile(),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 250,
                  width: double.infinity,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: FittedBox(
                        child: Image.asset('assets/images/s1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'E-voucher - Travel with more people and save more!',
                  style: TextStyle(fontFamily: 'bold', fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '5:30pm - Jun 24 2019',
                    style:
                        TextStyle(fontFamily: 'bold', color: Colors.lightBlue),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'E - voucher SUMMER : ',
                        style: TextStyle(
                            color: Colors.orangeAccent, fontFamily: 'bold'),
                      ),
                      TextSpan(
                        text: 'Enjoy VND 400.000 off add domestic flights.',
                        style:
                            TextStyle(color: Colors.grey, fontFamily: 'bold'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(fontFamily: 'bold', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: CircleAvatar(
                          backgroundColor: style.appColor,
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontFamily: 'bold', color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Prmotion Period : From 8:00 am Jun, 23 to \n11:59pm Jun 26,2019',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: CircleAvatar(
                          backgroundColor: style.appColor,
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontFamily: 'bold', color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Prmotion Period : From 8:00 am Jun, 23 to \n11:59pm Jun 26,2019',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: CircleAvatar(
                          backgroundColor: style.appColor,
                          child: Text(
                            '3',
                            style: TextStyle(
                                fontFamily: 'bold', color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Prmotion Period : From 8:00 am Jun, 23 to \n11:59pm Jun 26,2019',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20, right: 20, left: 20),
                  child: InkWell(
                    onTap: () {
                      //
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 13.0),
                      decoration: style.contentButtonStyle(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Confirm',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 20, right: 20, left: 20),
                  child: InkWell(
                    onTap: () {
                      //
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Make as unread',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 17,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ),
                  ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                            fontFamily: 'bold',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Promotion',
                    style: TextStyle(
                        fontSize: 17, color: Colors.white, fontFamily: 'bold'),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
