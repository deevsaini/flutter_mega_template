/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/infoPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class hotelPage extends StatefulWidget {
  hotelPage({Key? key}) : super(key: key);

  static const String pageId = 'hotelPage';

  @override
  State<hotelPage> createState() => _hotelPageState();
}

class _hotelPageState extends State<hotelPage> {
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 130, right: 20, left: 20, bottom: 10),
                child: _buildContent(
                  'assets/images/h5.jpg',
                  'Royal Palm Heritage',
                  'Purwokerto, Jateng',
                  '364 m from destonation',
                  '4.5',
                  '(3241 reviews)',
                  '\$ 143',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              'assets/images/h1.jpg',
              'Grand Luxury\'s',
              'Banyumas, Jateng',
              '2.3 m from destonation',
              '4.2',
              '(2567 reviews)',
              '\$ 234',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              'assets/images/h2.jpg',
              'The Orlando House',
              'Ajibarang, Jateng',
              '1.1 Km from destonation',
              '3.8',
              '(1235 reviews)',
              '\$ 132',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              'assets/images/h3.jpg',
              'Mention Island',
              'Maldives, Jateng',
              '5.6 Km from destonation',
              '4.8',
              '(5432 reviews)',
              '\$ 320',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Hotel',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 30),
                  ),
                  InkWell(
                    onTap: () {
                      //
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
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

  Widget _buildContent(img, txt1, txt2, txt3, txt4, txt5, txt6) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$txt1',
                  style: TextStyle(fontFamily: 'bold', fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.red,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '$txt2 - ',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      '$txt3',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '$txt4 - ',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      '$txt5',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$txt6',
                            style: TextStyle(fontFamily: 'bold', fontSize: 20),
                          ),
                          Text(
                            '/ night',
                            style: TextStyle(fontFamily: 'bold', fontSize: 10),
                          ),
                        ],
                      ),
                      _buildButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showBottomModal() {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Text(
              'Choose your filter',
              style: TextStyle(color: Colors.black, fontFamily: 'bold'),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Budget',
                      style: TextStyle(fontFamily: 'bold', fontSize: 17),
                    ),
                  ],
                ),
                Container(
                  child: RangeSlider(
                    values: _currentRangeValues,
                    max: 100,
                    divisions: 5,
                    activeColor: style.appColor,
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
                ),
                Row(
                  children: [
                    Text(
                      'Hotel Class',
                      style: TextStyle(fontFamily: 'bold', fontSize: 17),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                    ],
                  ),
                ),
                _buildContent1(Colors.orange.withOpacity(0.3), Icons.wifi,
                    Colors.orange, 'Facilities'),
                _buildContent1(Colors.red.withOpacity(0.3), Icons.room,
                    Colors.red, 'Property Type'),
                _buildContent1(Colors.green.withOpacity(0.3),
                    Icons.sort_by_alpha, Colors.green, 'Sort By'),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => infoPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 13.0),
                    decoration: style.contentButtonStyle(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'bold'),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 13.0),
                    decoration: BoxDecoration(
                      color: style.appColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Reset',
                          style: TextStyle(
                              color: style.appColor,
                              fontSize: 17,
                              fontFamily: 'bold'),
                        ),
                      ],
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

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                context: context,
                backgroundColor: Color(0xFFF0F2F6),
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return FractionallySizedBox(
                    heightFactor: 0.8,
                    child: showBottomModal(),
                  );
                },
              );
            },
            child: Container(
              width: 150,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Book a Room',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent1(bgclr, icn, icnclr, txt2) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: bgclr,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                icn,
                color: icnclr,
              ),
            ),
          ),
          Text(
            '$txt2',
            style: TextStyle(fontFamily: 'bold', fontSize: 17),
          ),
        ],
      ),
    );
  }
}
