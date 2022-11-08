/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = "Search";

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  List<int> artist = [1, 2, 3, 4, 5, 6, 7, 8];
  List<int> shop = [1, 2, 3, 4, 5, 6, 7, 8];
  int? groupValue = 0;
  int distance = 20;

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
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search by salons',
                  prefixIcon: Icon(Icons.search, color: Colors.black54),
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return filterBottomSheet();
                  },
                );
              },
              icon: Icon(
                Icons.segment,
                color: Colors.black54,
                size: 36,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop(null);
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: _buildCategories(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Popular artist',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var i in artist) popularArtist(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Result found (246)',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in shop) style.shopDetail(() {}),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories() {
    List<int> text = [1, 2, 3, 4, 5];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            for (var i in text)
              Column(
                children: [
                  Container(
                    height: 40.0,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Haircuts',
                      style: TextStyle(fontFamily: 'semibold'),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget popularArtist() {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SizedBox.fromSize(
              size: Size.fromRadius(35),
              child: FittedBox(
                child: Image(image: AssetImage('assets/images/g1.jpg')),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lily',
            style: style.mediumText(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Hair stylist',
            style: TextStyle(color: style.greyTextColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget filterBottomSheet() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.segment),
                Text(
                  'Filter',
                  style: style.headText(),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Services:',
                  style: style.headText(),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Chip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: style.appColor,
                        label: Row(
                          children: [
                            Text(
                              'Haircuts',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'semi-bold'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Makeup'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Makeup'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Makeup'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text('Makeup'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Rating:',
                  style: style.headText(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber.shade600,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber.shade600,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber.shade600,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber.shade600,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey.shade300,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4.0 Stars',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Gender:',
                  style: style.headText(),
                ),
                SizedBox(
                  height: 10,
                ),
                CupertinoSlidingSegmentedControl<int>(
                  padding: EdgeInsets.all(2),
                  backgroundColor: Colors.white,
                  thumbColor: style.appColor,
                  groupValue: groupValue,
                  children: {
                    0: buildSegment('All'),
                    1: buildSegment('Men'),
                    2: buildSegment('Woman')
                  },
                  onValueChanged: (groupValue) {
                    setState(() => this.groupValue = groupValue);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Distance:',
                  style: style.headText(),
                ),
                SizedBox(
                  height: 10,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Colors.grey.shade300,
                    activeTrackColor: style.appColor,
                    thumbColor: style.appColor,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                  ),
                  child: Slider(
                    value: distance.toDouble(),
                    min: 1.0,
                    max: 100.0,
                    onChanged: (double newValue) {
                      setState(() {
                        distance = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: style.appColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Apply filters(4)",
                            style: TextStyle(
                                fontFamily: 'semi-bold', color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSegment(String text) => Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Text(
          text,
        ),
      );
}
