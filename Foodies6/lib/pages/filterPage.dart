/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/productsPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class filterPage extends StatefulWidget {
  filterPage({Key? key}) : super(key: key);

  static const String pageId = 'filterPage';

  @override
  State<filterPage> createState() => _filterPageState();
}

class _filterPageState extends State<filterPage> {
  bool isChecked = false;
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.grey.shade100,
      shape: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: style.itemColor, fontFamily: 'bold'),
                ),
              ),
              InkWell(
                child: Text(
                  'Reset',
                  style: TextStyle(color: style.itemColor, fontFamily: 'bold'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle('Meal Type'),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                _buildType('Breakfast'),
                _buildType('Dinner'),
                _buildType('Brunch'),
                _buildType('Lunch'),
                _buildType('Other'),
              ],
            ),
            _buildTitle('Cuisine'),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                _buildChip('American'),
                _buildChip('Asian'),
                _buildChip('Indian'),
                _buildChip('Australian'),
                _buildChip('French'),
                _buildChip('Greek'),
                _buildChip('Spanish'),
              ],
            ),
            _buildTitle('Rating'),
            Row(
              children: [
                Icon(Icons.star, color: style.itemColor),
                Icon(Icons.star, color: style.itemColor),
                Icon(Icons.star, color: style.itemColor),
                Icon(Icons.star, color: style.itemColor),
                Icon(Icons.star, color: Colors.grey),
                SizedBox(width: 10),
                Text('4.0 star', style: TextStyle(color: Colors.grey)),
              ],
            ),
            _buildTitle('Distance'),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text('50 KM'),
                    ),
                  ],
                ),
                RangeSlider(
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
              ],
            ),
            _buildTitle('Sort By'),
            Text('Most Popular', style: TextStyle(fontSize: 15)),
            Text('Cost Low To High',
                style: TextStyle(fontSize: 15, color: style.itemColor)),
            Text('Cost High To Low', style: TextStyle(fontSize: 15)),
            _buildTitle('Price'),
            Wrap(
              children: [
                _buildChip('\$'),
                _buildChip('\$\$'),
                _buildChip('\$\$\$'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 17),
          ),
        ],
      ),
    );
  }

  Widget _buildType(txt) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: style.itemColor,
          shape: CircleBorder(),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          '$txt',
        ),
      ],
    );
  }

  Widget _buildChip(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Chip(
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.grey.shade100,
        label: Text(
          '$txt',
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => productsPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.categoriesButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Apply Filter',
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
