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

class applyFilter extends StatefulWidget {
  applyFilter({Key? key}) : super(key: key);

  static const String page_id = "Apply Filter";

  @override
  _applyFilterState createState() => _applyFilterState();
}

class _applyFilterState extends State<applyFilter> {
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
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    child: Text('Filter :'),
                  ),
                  Chip(
                    deleteIcon: Icon(
                      Icons.close,
                      size: 15,
                    ),
                    backgroundColor: Colors.grey.shade300,
                    label: Text(
                      'Burger',
                    ),
                    onDeleted: () {
                      setState(() {
                        //
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                    deleteIcon: Icon(
                      Icons.close,
                      size: 15,
                    ),
                    backgroundColor: Colors.grey.shade300,
                    label: Text(
                      'high Price',
                    ),
                    onDeleted: () {
                      setState(() {
                        //
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(
                    deleteIcon: Icon(
                      Icons.close,
                      size: 15,
                    ),
                    backgroundColor: Colors.grey.shade300,
                    label: Text(
                      '5 Star',
                    ),
                    onDeleted: () {
                      setState(() {
                        //
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            liststaurants(),
            liststaurants(),
            liststaurants(),
            liststaurants(),
          ],
        ),
      ),
    );
  }

  Widget liststaurants() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
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
                  height: 110,
                  width: 110,
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
                          'Mc Donald\'S',
                          style: style.mediumText(),
                        ),
                        Icon(
                          Icons.bookmark,
                          color: style.secondaryColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: style.greyColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            '13A Master Street New York',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style:
                                TextStyle(fontSize: 14, color: style.greyColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: style.greyColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            'Burger Fast Food Coffee',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style:
                                TextStyle(fontSize: 14, color: style.greyColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
                              '4.9',
                              style: TextStyle(fontFamily: 'medium'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: style.greyColor,
                            ),
                            Text(
                              '30 min',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_bitcoin,
                              color: Colors.green,
                            ),
                            Text(
                              'Free',
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
