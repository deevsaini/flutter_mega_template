/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class FilterResult extends StatefulWidget {
  static const String id = 'FilterResult';

  const FilterResult({Key? key}) : super(key: key);

  @override
  _FilterResultState createState() => _FilterResultState();
}

class _FilterResultState extends State<FilterResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Filter Result', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.grid_view_rounded,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox('Find district, street name...', () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  chips('House'),
                  chips('Villa'),
                  chips('Apartment'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blackBoldHeading('10 Result'),
                Text(
                  'See more',
                  style: TextStyle(
                      color: appColor2, fontSize: 12, fontFamily: 'medium'),
                )
              ],
            ),
            SizedBox(height: 10),
            _buildItem(),
            _buildItem(),
            _buildItem(),
            _buildItem(),
          ],
        ),
      ),
    );
  }

  chips(name) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Chip(
        backgroundColor: Colors.white,
        deleteIcon: Icon(Icons.close, size: 14),
        onDeleted: () {},
        label: Text(
          name,
        ),
      ),
    );
  }

  Widget _buildItem() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/images/h3.jpg',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -5,
                  right: -5,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: [
                          Icon(Icons.favorite, size: 10, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            "220",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackBoldHeading('\$12,120'),
                  SizedBox(height: 5),
                  greyText('The Best Villa Efcee'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.directions_bus,
                          size: 14, color: Colors.black38),
                      SizedBox(width: 5),
                      Text(
                        "4",
                        style: TextStyle(color: Colors.black38, fontSize: 12),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.garage, size: 14, color: Colors.black38),
                      SizedBox(width: 5),
                      Text(
                        "2",
                        style: TextStyle(color: Colors.black38, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
