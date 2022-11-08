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

class mySaved extends StatefulWidget {
  mySaved({Key? key}) : super(key: key);

  static const String page_id = "My Saved";

  @override
  _mySavedState createState() => _mySavedState();
}

class _mySavedState extends State<mySaved> {
  int tabID = 1;
  List<int> savedItem = [1, 2, 3, 4, 5];

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
        'My Saved',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
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
              mySaveContainer()
            else if (tabID == 2)
              mySaveContainer()
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
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
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration: segmentDecoration(1),
              child: Text('Foods', style: segmentText(1)),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                decoration: segmentDecoration(2),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text('Restaurants', style: segmentText(2))),
              )),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: tabID == val ? style.appColor : style.appColor.withOpacity(0.1),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'medium' : 'regular',
        color: tabID == val ? Colors.white : Colors.black);
  }

  Widget mySaveContainer() {
    return Column(
      children: [
        for (var i in savedItem) saved(),
      ],
    );
  }

  Widget saved() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/burger.jpg',
                  height: 90,
                  width: 90,
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
                        Icon(
                          Icons.bookmark,
                          color: Colors.red,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [Text('Mc Donald\'S')],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: style.secondaryColor,
                            ),
                            Text(
                              '4.6',
                              style: TextStyle(fontFamily: 'medium'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.delivery_dining,
                              color: style.greyColor,
                            ),
                            Text(
                              '15 min',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\$55',
                              style: TextStyle(fontFamily: 'medium'),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
