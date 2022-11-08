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

class foodPage extends StatefulWidget {
  foodPage({Key? key}) : super(key: key);

  static const String pageId = 'foodPage';

  @override
  State<foodPage> createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                      color: style.appColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                        fontFamily: 'bold',
                        color: style.appColor,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.search,
                color: style.appColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTitle(),
            _buildScrollContent(),
            _buildTitle2('POPULAR CHOICES'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    _buildCategories('Whole food for your helth',
                        'assets/images/p1.jpg', 'Eva Surbhi Complex'),
                    _buildCategories('Whole food for your helth',
                        'assets/images/p2.jpg', 'Hong Complex'),
                    _buildCategories('Whole food for your helth',
                        'assets/images/p3.jpg', 'Iscon Complex'),
                    _buildCategories('Whole food for your helth',
                        'assets/images/p1.jpg', 'HydRaw Center'),
                    _buildCategories('Whole food for your helth',
                        'assets/images/p2.jpg', 'Wester Complex'),
                  ],
                ),
              ),
            ),
            _buildTitle2('POPULAR CHOICES'),
            _buildCategories2(),
            _buildCategories2(),
            _buildCategories2(),
            _buildCategories2(),
            _buildCategories2(),
            _buildCategories2(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Text(
          'Food & Beverage',
          style: TextStyle(fontFamily: 'bold', fontSize: 18),
        ),
      ],
    );
  }

  Widget _buildTitle2(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          //
        },
        child: Column(
          children: [
            Container(
              height: 130,
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SizedBox(
                        width: 150,
                        child: Text(
                          '$txt',
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontFamily: 'bold', fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        '$txt2',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: style.appColor, size: 10),
                              Icon(Icons.star, color: style.appColor, size: 10),
                              Icon(Icons.star, color: style.appColor, size: 10),
                              Icon(Icons.star, color: style.appColor, size: 10),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  '3 KM Away',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.lightBlue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildCategories2() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage('assets/images/p1.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Morico - Contemporary Japanes locator',
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontFamily: 'bold'),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Morico - Contemporary Japanes locator',
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '3 KM Away',
                            style: TextStyle(
                                fontSize: 10, color: Colors.lightBlue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 20,
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  size: 15,
                  color: Colors.redAccent,
                ),
                Text(
                  '23',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScrollContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.pinkAccent),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'All',
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 17),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 20,
                  width: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.pinkAccent.withOpacity(0.2),
                    child: Text(
                      '26',
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Food',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Food',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Food',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Food',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Food',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Food',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
        ]),
      ),
    );
  }
}
