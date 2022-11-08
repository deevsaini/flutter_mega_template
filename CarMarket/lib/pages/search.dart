/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = "Search";

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  int tabID = 1;
  int seriesID = 3;
  int yearID = 2;

  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.0),
      child: AppBar(
        elevation: 0,
        backgroundColor: appColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Search',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FractionallySizedBox(
                    heightFactor: 1,
                    child: filterContainer(),
                  );
                },
              );
            },
            icon: Icon(Icons.filter_alt_outlined),
          ),
        ],
        flexibleSpace: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          margin: EdgeInsets.only(top: 80),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Porsche',
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            searchList(),
            searchList(),
            searchList(),
            searchList(),
          ],
        ),
      ),
    );
  }

  Widget searchList() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1975 FERRARI 275 GBT',
                    style: headText(),
                  ),
                  Text(
                    '\$467,580.00',
                    style: TextStyle(
                        color: appColor, fontSize: 16, fontFamily: 'medium'),
                  ),
                ],
              ),
              Icon(Icons.bookmark_add_outlined)
            ],
          ),
        ],
      ),
    );
  }

  Widget filterContainer() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          color: appColor,
          child: Column(
            children: [
              AppBar(
                backgroundColor: appColor,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
                title: Text(
                  'Filter',
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BRAND',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Porsche'),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SERIES',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _buildSeries(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'VERSION',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _buildVersion(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'YEAR',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _buildYear(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'KM\'S DRIVEN',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                    RangeSlider(
                      values: _currentRangeValues,
                      activeColor: appColor,
                      max: 100,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('0 KM'),
                        Text('100,000 KM'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'PRICE',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                    RangeSlider(
                      values: _currentRangeValues,
                      activeColor: appColor,
                      max: 100,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$1,350,000'),
                        Text('\$3,500,000'),
                      ],
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

  Widget _buildSeries() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    seriesID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: segmentDecoration(1),
                  child: Text('2 Series'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      seriesID = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: segmentDecoration(2),
                    child: Text('3 Series'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      seriesID = 3;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: segmentDecoration(3),
                    child: Text('4 Series'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      seriesID = 4;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: segmentDecoration(4),
                    child: Text('5 Series'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      seriesID = 5;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: segmentDecoration(5),
                    child: Text('6 Series'),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        color: tabID == val ? appColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10));
  }

  Widget _buildVersion() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
                  padding: EdgeInsets.all(10),
                  decoration: versionDecoration(1),
                  child: Text('Hybrid'),
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
                    padding: EdgeInsets.all(10),
                    decoration: versionDecoration(2),
                    child: Text('Wagon'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 3;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: versionDecoration(3),
                    child: Text('Sedan'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 4;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: versionDecoration(4),
                    child: Text('Speedster'),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  versionDecoration(val) {
    return BoxDecoration(
        color: tabID == val ? appColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10));
  }

  Widget _buildYear() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    yearID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: yearDecoration(1),
                  child: Text('2020'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      yearID = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: yearDecoration(2),
                    child: Text('2019'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      yearID = 3;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: yearDecoration(3),
                    child: Text('2018'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      yearID = 4;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: yearDecoration(4),
                    child: Text('2017'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      yearID = 5;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: yearDecoration(5),
                    child: Text('2016'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      yearID = 6;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: yearDecoration(6),
                    child: Text('2015'),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  yearDecoration(val) {
    return BoxDecoration(
        color: yearID == val ? appColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10));
  }
}
