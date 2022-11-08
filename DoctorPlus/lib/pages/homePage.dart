/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor/pages/consultHistoryPage.dart';
import 'package:doctor/pages/freeConsultPage.dart';
import 'package:doctor/pages/notificationPage.dart';
import 'package:doctor/pages/schedulePage.dart';
import 'package:doctor/pages/videoCall2Page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
      preferredSize: Size.fromHeight(80),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: FittedBox(
                        child: Image.asset('assets/images/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi Dr,',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'bold',
                                    fontSize: 17),
                              ),
                              Text(
                                'How\'s are you Today?',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          notificationPage()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 20.0,
                                        ),
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -10,
                                  right: -10,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            fontFamily: 'bold',
                                            color: Colors.white),
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            _buildSearchbar('Search Patient, health issue..'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Consults',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'bold',
                                fontSize: 18),
                          ),
                          TextSpan(
                            text: ' for today',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '5 of 9 Complete',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  child: CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 7.0,
                    animation: true,
                    percent: 0.7,
                    progressColor: style.appColor,
                    center: Text(
                      "70.0%",
                      style: TextStyle(fontFamily: 'bold', fontSize: 17.0),
                    ),
                  ),
                ),
              ],
            ),
            GridView.count(
              primary: false,
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 100 / 100,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => schedulePage()));
                  },
                  child: _buildItemContent(
                      Image.asset('assets/images/l1.png'), 'Schedule'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => consultHistoryPage()));
                  },
                  child: _buildItemContent(
                      Image.asset('assets/images/l2.png'), 'Consult History'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => videoCall2Page()));
                  },
                  child: _buildItemContent(Image.asset('assets/images/l3.png'),
                      'Patient Management'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => freeConsultPage()));
                  },
                  child: _buildItemContent(
                      Image.asset('assets/images/l4.png'), 'Free Consults'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemContent(img, txt) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: FittedBox(
                    child: img,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '$txt',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontFamily: 'bold'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSearchbar(hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: hintText,
                  prefixIcon: Icon(Icons.search),
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
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
