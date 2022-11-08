/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/newinPage.dart';

import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class searchPage extends StatefulWidget {
  searchPage({Key? key}) : super(key: key);

  static const String pageId = 'searchPage';

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  int tabID = 1;

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
    return PreferredSize(
      preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Column(
          children: [
            _buildSearchbar('Search..'),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSegment(),
            if (tabID == 1)
              _buildFirstContent()
            else if (tabID == 2)
              _buildSecondContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchbar(hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                height: 40,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: hintText,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt),
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstContent() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => newinPage()));
          },
          child: _buildHeadingItemContent(
            'NEW IN',
            Image.asset('assets/images/s1.png', fit: BoxFit.contain),
          ),
        ),
        _buildHeadingItemContent(
          'CLOTHING',
          Image.asset('assets/images/s11.png', fit: BoxFit.contain),
        ),
        _buildHeadingItemContent(
          'HATES',
          Image.asset('assets/images/s9.png', fit: BoxFit.contain),
        ),
        _buildHeadingItemContent(
          'PANTS',
          Image.asset('assets/images/s15.png', fit: BoxFit.contain),
        ),
      ],
    );
  }

  Widget _buildSecondContent() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => newinPage()));
          },
          child: _buildHeadingItemContent(
            'NEW IN',
            Image.asset('assets/images/s10.png', fit: BoxFit.contain),
          ),
        ),
        _buildHeadingItemContent(
          'CLOTHING',
          Image.asset('assets/images/s2.png', fit: BoxFit.contain),
        ),
        _buildHeadingItemContent(
          'HATES',
          Image.asset('assets/images/s8.png', fit: BoxFit.contain),
        ),
        _buildHeadingItemContent(
          'PANTS',
          Image.asset('assets/images/s15.png', fit: BoxFit.contain),
        ),
      ],
    );
  }

  Widget _buildHeadingItemContent(txt, img) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        overflow: Overflow.visible,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      '$txt',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'bold'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            height: 100,
            width: 130,
            right: 10,
            bottom: 90,
            child: SizedBox(
              height: 100,
              width: 130,
              child: img,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.only(top: 0, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: segmentDecoration(1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text('WOMEN', style: segmentText(1)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text('MEN', style: segmentText(2)),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: tabID == val ? style.appColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: 'bold', color: tabID == val ? style.appColor : Colors.grey);
  }
}
