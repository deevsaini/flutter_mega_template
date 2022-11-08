/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon1/Pages/ServicesInfoPage.dart';
import 'package:salon1/Pages/SpecialistInfoPage.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;

class DiscoverPage extends StatefulWidget {
  DiscoverPage({Key? key}) : super(key: key);

  static const String PageId = 'DiscoverPage';

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
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

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          Row(
            children: [
              searchbar('Find a salon, specialist..'),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.filter_list,
                  size: 30,
                ),
              )
            ],
          ),
          _buildTitle('Best Specialist'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  _buildSpecialist('Rahul Jograna', 'assets/images/selfies.jpg',
                      'Hair Stylist'),
                  _buildSpecialist(
                      'Hardik Rajput', 'assets/images/p4.jpg', 'Hair Stylist'),
                  _buildSpecialist('Shailly Acharya', 'assets/images/p6.jpg',
                      'Hair Stylist'),
                  _buildSpecialist(
                      'Jaydeep Hirani', 'assets/images/p3.jpg', 'Hair Stylist'),
                  _buildSpecialist(
                      'Dodiya Saheb', 'assets/images/s3.jpg', 'Hair Stylist'),
                ],
              ),
            ),
          ),
          _buildTitle('Special Offer'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  _buildCategories('Reflection Beauty Salon',
                      'assets/images/h2.jpg', 'Eva Surbhi Complex'),
                  _buildCategories('Lovely Beauty Salon',
                      'assets/images/h6.jpg', 'Hong Complex'),
                  _buildCategories(
                      'Showsen Salon', 'assets/images/h3.jpg', 'Iscon Complex'),
                  _buildCategories('Beauty Hair Art', 'assets/images/h4.jpg',
                      'HydRaw Center'),
                  _buildCategories(
                      'Danwer Salon', 'assets/images/h5.jpg', 'Wester Complex'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 20, fontFamily: 'bold'),
          ),
          Text(
            'View All >',
            style: TextStyle(fontSize: 15, color: style.appColor),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Text(
                            'Hi',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Rahul',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'bold',
                                color: style.appColor),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          'Bhavnagar 364270, Gujrat India.',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          //
                        },
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: -2,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 20,
                          minHeight: 15,
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'bold'),
                          textAlign: TextAlign.center,
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
    );
  }

  Widget searchbar(hintText) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Container(
          height: 40,
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(Icons.search),
              hintStyle: TextStyle(color: Colors.grey.shade600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.shade300,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSpecialist(txt, img, txt2) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SpecialistInfoPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              width: 130,
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '$txt',
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    '$txt2',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ServicesInfoPage()));
        },
        child: Column(
          children: [
            Container(
              height: 130,
              width: 300,
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
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '4',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            '$txt',
                            style: TextStyle(fontFamily: 'bold', fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            '$txt2',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: style.appColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Book',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                    ),
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
