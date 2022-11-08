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

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = "Search";

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
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
      title: Container(
        child: Row(
          children: [
            Flexible(
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Searching...',
                  prefixIcon: Icon(Icons.search, color: Colors.black54),
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () => {
                // Navigator.of(context).push(new MaterialPageRoute<Null>(
                //     builder: (BuildContext context) {
                //       return filter();
                //     },
                //     fullscreenDialog: true)),
              },
              icon: Icon(
                Icons.format_align_left_rounded,
                color: style.secondaryColor,
                size: 36,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Exit',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'History',
                  style: style.mediumText(),
                ),
                Text(
                  'Clear All',
                  style: TextStyle(color: style.appColor),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'McDonals',
                style: TextStyle(color: style.greyColor),
              ),
              Icon(
                Icons.close,
                color: style.greyColor,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Coffee',
                style: TextStyle(color: style.greyColor),
              ),
              Icon(
                Icons.close,
                color: style.greyColor,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pizza hut',
                style: TextStyle(color: style.greyColor),
              ),
              Icon(
                Icons.close,
                color: style.greyColor,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'View More',
                style: TextStyle(
                    color: style.secondaryColor,
                    fontFamily: 'medium',
                    fontSize: 16),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: style.secondaryColor,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Tags',
                style: style.mediumText(),
              ),
              Row(
                children: [
                  Text(
                    'View all',
                    style: TextStyle(color: style.secondaryColor),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: style.secondaryColor,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              chipContainer('Burger Meal'),
              chipContainer('Star Bucks'),
              chipContainer('Pizza Hut'),
              chipContainer('Rice Chicken'),
              chipContainer('Coffee'),
            ],
          ),
        ],
      ),
    );
  }

  Widget chipContainer(name) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Chip(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30)),
        label: Text(
          name,
          style: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
