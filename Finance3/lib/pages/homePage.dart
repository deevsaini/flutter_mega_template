/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance3_fluttermarketplace/pages/foodPage.dart';
import 'package:finance3_fluttermarketplace/pages/newTransactionPage.dart';
import 'package:flutter/material.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
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

class _homePageState extends State<homePage> {
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: _buildMenu(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => newTransactionPage()));
                  },
                  child: _buildCategories(
                      AssetImage('assets/images/8.png'), 'Bills \n & Services'),
                ),
                _buildCategories(
                    AssetImage('assets/images/7.png'), 'Entertainment'),
                _buildCategories(AssetImage('assets/images/8.png'), 'Shopping'),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => foodPage()));
                  },
                  child: _buildCategories(
                      AssetImage('assets/images/6.png'), 'Food \n & Beverage'),
                ),
                _buildCategories(
                    AssetImage('assets/images/5.png'), 'Helth \n & Fitness'),
                _buildCategories(
                    AssetImage('assets/images/4.png'), 'Transportaion'),
                _buildCategories(AssetImage('assets/images/3.png'),
                    'Transfer \n & Withdraw'),
                _buildCategories(
                    AssetImage('assets/images/1.png'), 'Other \n Utilities'),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  _buildSpecialist('assets/images/i2.jpg',
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  _buildSpecialist('assets/images/i2.jpg',
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                ],
              ),
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
        decoration: BoxDecoration(
          color: style.appColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildSearchbar('Search..'),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchbar(hintText) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
          ),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              hintStyle: TextStyle(color: Colors.grey.shade600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.2),
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Container(
        width: 350,
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.qr_code,
                      color: Colors.white,
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Code Scan',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.code,
                      color: Colors.white,
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your code',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.money,
                      color: Colors.white,
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cash in',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Transaction',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategories(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: img,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$txt',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialist(img, txt2) {
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
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.srcOver),
                  image: new AssetImage('$img'),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' $txt2',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'bold',
                          fontSize: 17),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.only(top: 10),
                            decoration: style.whiteContentButtonStyle(),
                            child: Center(
                              child: Text(
                                'Join Today',
                                style: TextStyle(
                                    fontFamily: 'bold', color: style.appColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
