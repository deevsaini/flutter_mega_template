/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/addCardPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;
import 'package:ticket_widget/ticket_widget.dart';

class checkoutPage extends StatefulWidget {
  checkoutPage({Key? key}) : super(key: key);

  static const String pageId = 'checkoutPage';

  @override
  State<checkoutPage> createState() => _checkoutPageState();
}

class _checkoutPageState extends State<checkoutPage> {
  int tabId = 1;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
        bottomNavigationBar: Container(
          height: 70,
          child: Column(
            children: [
              if (tabId == 1)
                _buildBottomNavigationBar1()
              else if (tabId == 2)
                _buildBottomNavigationBar2()
              else if (tabId == 3)
                _buildBottomNavigationBar3()
            ],
          ),
        ),
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
              tabId == 1
                  ? Padding(
                      padding: const EdgeInsets.only(
                          top: 150, right: 20, left: 20, bottom: 10),
                      child: _buildContent(
                        Image.asset('assets/images/h2.jpg'),
                        'Delux Room',
                        'Room Size : 27 m2',
                        'Free Cancellation',
                        '\$ 143',
                      ),
                    )
                  : Container()
            ],
          ),
          Column(
            children: [
              if (tabId == 1)
                _buildFirstContent()
              else if (tabId == 2)
                _buildSecondContent()
              else if (tabId == 3)
                _buildThirdContent()
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFirstContent() {
    return Column(
      children: [
        _buildDetailsContent(style.appColor.withOpacity(0.3), Icons.person,
            style.appColor, 'Contact Details', 'Add Content'),
        _buildDetailsContent(Colors.orange.withOpacity(0.3), Icons.percent,
            Colors.orange, 'Promo Code', 'Add PromoCode'),
      ],
    );
  }

  Widget _buildSecondContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          _buildSecondContentItem(),
          _buildSecondContentItem(),
          _buildSecondContentItem(),
          _buildSecondContentItem(),
          _buildSecondContentItem(),
          _buildSecondContentItem(),
        ],
      ),
    );
  }

  Widget _buildSecondContentItem() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30),
                          child: FittedBox(
                            child: Image.asset('assets/images/p1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '••••',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                      Text(
                        '5689 • \$',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'bold'),
                      ),
                    ],
                  ),
                  Text(
                    'Verified',
                    style: TextStyle(
                        color: Colors.greenAccent, fontFamily: 'bold'),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Debit Card',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Exp : 10/16',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: -17,
            top: -20,
            child: Checkbox(
              checkColor: Colors.white,
              value: isChecked,
              activeColor: style.appColor,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThirdContent() {
    return Column(
      children: [
        TicketWidget(
          width: 350,
          height: 500,
          isCornerRounded: true,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 20),
          child: _buildTicketData(),
        ),
      ],
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
                    'Checkout',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 30),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: style.appColor, fontFamily: 'bold'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Book And Review',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'bold',
                            color: Colors.white,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.3),
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'bold'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Payment',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'bold',
                            color: Colors.white,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.3),
                          child: Text(
                            '3',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'bold'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Confirm',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'bold',
                            color: Colors.white,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(img, txt1, txt2, txt3, txt4) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '$txt1',
                        style: TextStyle(fontFamily: 'bold', fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text('$txt2')
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: FittedBox(
                        child: img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '$txt3',
              style: TextStyle(fontFamily: 'bold'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfoContent(style.appColor.withOpacity(0.3), Icons.wifi,
                      style.appColor, 'Free \nWifi'),
                  _buildInfoContent(Colors.orange.withOpacity(0.3),
                      Icons.dangerous, Colors.orange, 'Non - \nRefunded'),
                  _buildInfoContent(Colors.red.withOpacity(0.3),
                      Icons.restaurant, Colors.red, 'Free \nRestaurant'),
                  _buildInfoContent(Colors.green.withOpacity(0.3),
                      Icons.smoking_rooms, Colors.green, 'No - \nSmoking'),
                ],
              ),
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
                        '$txt4',
                        style: TextStyle(fontFamily: 'bold', fontSize: 20),
                      ),
                      Text(
                        '/ night',
                        style: TextStyle(fontFamily: 'bold', fontSize: 10),
                      ),
                    ],
                  ),
                  Text('1 Room'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketData() {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text(
                  'JKT',
                  style: TextStyle(fontFamily: 'bold', fontSize: 20),
                ),
                Text(
                  'Jakarta',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Icon(
              Icons.flight_land,
              size: 40,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  'SBY',
                  style: TextStyle(fontFamily: 'bold', fontSize: 20),
                ),
                Text(
                  'Surabaya',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox.fromSize(
                size: Size.fromRadius(30),
                child: FittedBox(
                  child: Image.asset('assets/images/l.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Airline',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Air Asia',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'bold', fontSize: 17),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Passengers',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'James Christin',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'bold', fontSize: 17),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '24 Mar 2020',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gate',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '24A',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flight No.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'NNS24',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Boarding Time',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '02:39 PM',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seat',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '5A',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Class',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Economy',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'bold', fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
        ),
        Container(
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/b.png'), fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoContent(bgclr, icn, icnclr, txt) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(bottom: 5),
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
            '$txt',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsContent(bgclr, icn, icnclr, txt1, txt2) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(right: 10),
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
                  '$txt1',
                  style: TextStyle(fontFamily: 'bold'),
                ),
              ],
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(right: 100, top: 20),
              decoration: style.contentButtonWithOpacity(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '$txt2',
                      style:
                          TextStyle(fontFamily: 'bold', color: style.appColor),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
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

  Widget _buildBottomNavigationBar1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            tabId = 2;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Book',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar2() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            tabId = 3;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Payments',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar3() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => addCardPage()));
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
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
