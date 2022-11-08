/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/appointmentPage.dart';
import 'package:fitness_app/pages/sideMenuPage.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Color(0xFF2D2D39),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sideMenuPage(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF2D2D39),
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Icon(Icons.menu),
          ),
          Text(
            'Home',
            style: TextStyle(
                fontFamily: 'bold', color: Colors.white, fontSize: 20),
          ),
          InkWell(
            onTap: () {
              //
            },
            child: Icon(Icons.map),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSearchbar('Search..'),
              _buildTitle('Recommended'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      _buildCategories('Reflection Beauty Salon',
                          'assets/images/2.jpg', 'Eva Surbhi Complex'),
                      _buildCategories('Lovely Beauty Salon',
                          'assets/images/3.jpg', 'Hong Complex'),
                      _buildCategories('Showsen Salon', 'assets/images/10.jpg',
                          'Iscon Complex'),
                      _buildCategories('Beauty Hair Art',
                          'assets/images/11.jpg', 'HydRaw Center'),
                      _buildCategories('Danwer Salon', 'assets/images/9.jpg',
                          'Wester Complex'),
                    ],
                  ),
                ),
              ),
              _buildTitle('Popular Personal Trainer'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      _buildSubCategories('Rahul Jograna',
                          'assets/images/1.jpg', 'Pushup Specialist'),
                      _buildSubCategories('Hardik Rajput',
                          'assets/images/2.jpg', 'Sixpack Specialist'),
                      _buildSubCategories('Dodiya Jaydeep',
                          'assets/images/3.jpg', 'Fat Trainer'),
                      _buildSubCategories('Jaydeep Hirani',
                          'assets/images/4.jpg', 'Lose Weight Trainer'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Text(
          '$txt',
          style:
              TextStyle(fontFamily: 'bold', fontSize: 15, color: Colors.white),
        ),
      ]),
    );
  }

  Widget _buildSearchbar(hintText) {
    return Row(
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
        ),
      ],
    );
  }

  Widget _buildCategories(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Color(0xFF2D2D39),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => appointmentPage()));
        },
        child: Column(
          children: [
            Container(
              height: 130,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('$img'),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            '$txt',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: 'bold',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            '$txt2',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 10),
                        Icon(Icons.star, color: Colors.orange, size: 10),
                        Icon(Icons.star, color: Colors.orange, size: 10),
                        Icon(Icons.star, color: Colors.orange, size: 10),
                        Icon(Icons.star, color: Colors.orange, size: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white))),
            ),
            Container(
              width: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'MON - FRI',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.history_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '10:00 - 18:00',
                          style: TextStyle(color: Colors.white),
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

  Widget _buildSubCategories(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => appointmentPage()));
        },
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('$img'),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        '$txt',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'bold',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        '$txt2',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white),
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
}
