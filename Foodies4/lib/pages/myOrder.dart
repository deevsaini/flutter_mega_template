/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;

class myOrder extends StatefulWidget {
  myOrder({Key? key}) : super(key: key);

  static const String page_id = "My Order";

  @override
  _myOrderState createState() => _myOrderState();
}

class _myOrderState extends State<myOrder> {
  int tabID = 1;

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
      automaticallyImplyLeading: false,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'My Orders',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(Icons.notification_add_outlined),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildSegment(),
            if (tabID == 1)
              prOrderContainer()
            else if (tabID == 2)
              onComingContainer()
            else if (tabID == 3)
              historyContainer()
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tabID = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: segmentDecoration(1),
              child: Text('Pr-Orders', style: segmentText(1)),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: segmentDecoration(2),
                child: Text('Oncoming', style: segmentText(2)),
              )),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 3;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: segmentDecoration(3),
                child: Text('History', style: segmentText(3)),
              )),
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
        fontFamily: tabID == val ? 'medium' : 'regular',
        color: tabID == val ? style.appColor : Colors.grey);
  }

  Widget prOrderContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '25 May 2019',
            style: TextStyle(color: style.greyColor),
          ),
          SizedBox(
            height: 20,
          ),
          orders(),
          orders(),
          SizedBox(
            height: 10,
          ),
          Text(
            '24 May 2019',
            style: TextStyle(color: style.greyColor),
          ),
          SizedBox(
            height: 20,
          ),
          orders(),
          orders(),
        ],
      ),
    );
  }

  Widget orders() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/burger.jpg',
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cheese Burger',
                          style: style.mediumText(),
                        ),
                        Text(
                          '\$15.00',
                          style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 16,
                              color: style.secondaryColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '25 May, 2020 . 11:30',
                      style: TextStyle(color: style.greyColor),
                    )
                  ],
                ),
              ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                decoration: BoxDecoration(
                  color: style.appColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.refresh_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Reorder',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                decoration: BoxDecoration(
                  color: style.appColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get Help',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget onComingContainer() {
    return Container(
      margin: EdgeInsets.only(top: 90),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/cart.png'),
            width: 180,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Cart Empty',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: style.appColor),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Go a head, order some items \n from the menu',
            textAlign: TextAlign.center,
            style: TextStyle(color: style.greyColor),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                decoration: BoxDecoration(
                  color: style.appColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Add Items',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget historyContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '25 May 2019',
            style: TextStyle(color: style.greyColor),
          ),
          SizedBox(
            height: 20,
          ),
          orders(),
          orders(),
          SizedBox(
            height: 10,
          ),
          Text(
            '24 May 2019',
            style: TextStyle(color: style.greyColor),
          ),
          SizedBox(
            height: 20,
          ),
          orders(),
          orders(),
        ],
      ),
    );
  }
}
