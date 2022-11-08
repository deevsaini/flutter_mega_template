/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/helper/style.dart' as style;
import 'package:food2/pages/latestDeals.dart';
import 'package:food2/pages/navigation.dart';
import 'package:food2/pages/restaurantDetail.dart';
import 'package:food2/pages/search.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  static const String page_id = 'Home Screen';

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int tabID = 1;
  List<int> text = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      title: Row(
        children: [
          Icon(Icons.location_on_outlined),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 220,
            child: Text(
              '1124 Jupiter, Blackhole',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: style.headText(),
            ),
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => navigation()));
              },
              icon: Icon(Icons.navigation_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => search()));
              },
              icon: Icon(Icons.search_outlined),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildSegment(),
          tabID == 1
              ? Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 40, left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFFCEAC6),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => latestDeals()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'EPIC DEALS',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '30 % OFF',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '* Applicable terms & conditions',
                                      style: TextStyle(
                                          fontFamily: 'regular', fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 40, left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => latestDeals()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'EPIC DEALS',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '20 % OFF',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '* Applicable terms & conditions',
                                      style: TextStyle(
                                          fontFamily: 'regular', fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return filterModal();
                                  });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.filter_alt_outlined),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Filter'),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            // onTap: ,
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Text('Ratings'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            // onTap: ,
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Text('Price'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Special Offers',
                        style: style.headText(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i in text) specialOffers(),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 40, left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xFFFCEAC6),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => latestDeals()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'EPIC DEALS',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '30 % OFF',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '* Applicable terms & conditions',
                                      style: TextStyle(
                                          fontFamily: 'regular', fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 40, left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => latestDeals()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'EPIC DEALS',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '20 % OFF',
                                      style: TextStyle(
                                          fontFamily: 'semi-bold',
                                          fontSize: 22),
                                    ),
                                    Text(
                                      '* Applicable terms & conditions',
                                      style: TextStyle(
                                          fontFamily: 'regular', fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return filterModal();
                                  });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.filter_alt_outlined),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Filter'),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            // onTap: ,
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Text('Ratings'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            // onTap: ,
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Text('Price'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Special Offers',
                        style: style.headText(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i in text) specialOffers(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget specialOffers() {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 270,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => restaurantDetails()));
        },
        child: Column(
          children: [
            Container(
              height: 150,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/cake.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    'Farrel patisserie',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: style.headText(),
                  ),
                ),
                Icon(
                  Icons.favorite_outline,
                  color: style.appColor,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text('4.5')
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.delivery_dining_outlined,
                      color: Colors.red,
                    ),
                    Text('30-40 min')
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\$\$',
                  style: TextStyle(fontFamily: 'medium'),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('Breads'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('Starters'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('Sizzlers'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('Meals'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                decoration: segmentDecoration(1),
                child: Text(
                  'Delivery',
                  textAlign: TextAlign.center,
                  style: segmentText(1),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                decoration: segmentDecoration(2),
                child: Text(
                  'Pickup',
                  textAlign: TextAlign.center,
                  style: segmentText(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: tabID == val ? style.appColor : Colors.transparent);
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'medium' : 'regular',
        color: tabID == val ? Colors.white : Colors.grey);
  }

  Widget filterModal() {
    bool isChecked = false;

    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close_rounded)),
          title: Text(
            'Sort and filter',
            style: style.headText(),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Clear',
                style: TextStyle(color: style.appColor),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sort by',
                style: style.headText(),
              ),
              SizedBox(
                height: 10,
              ),
              sortBy('Recommneded'),
              sortBy('Delivery time'),
              sortBy('Distance'),
              SizedBox(
                height: 10,
              ),
              Text(
                'Price range',
                style: style.headText(),
              ),
              SizedBox(
                height: 10,
              ),
              priceRange('\$', 'Below \$10'),
              priceRange('\$\$', '\$10 to \$99'),
              priceRange('\$\$\$', 'Over \$100'),
              Text(
                'Ratings',
                style: style.headText(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('4 and Above'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        onPrimary: Colors.black,
                        primary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('4.5 and Above'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        onPrimary: Colors.black,
                        primary: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sortBy(text) {
    bool isChecked = false;

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: style.appColor,
          value: isChecked,
          shape: RoundedRectangleBorder(),
          onChanged: (bool? _value) {
            setState(() {
              isChecked = _value!;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(text),
        )
      ],
    );
  }

  Widget priceRange(range, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            range,
            style: TextStyle(fontFamily: 'semi-bold', fontSize: 18),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(text),
            ),
          ),
          Icon(
            Icons.check_circle_outline,
            color: Colors.grey.shade400,
            size: 20,
          )
        ],
      ),
    );
  }
}
