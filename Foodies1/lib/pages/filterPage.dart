/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class filterPage extends StatefulWidget {
  filterPage({Key? key}) : super(key: key);

  static const String pageId = 'filterPage';

  @override
  State<filterPage> createState() => _filterPageState();
}

class _filterPageState extends State<filterPage> {
  bool isChecked = false;
  RangeValues _currentRangeValues = const RangeValues(0, 20);

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
      backgroundColor: Colors.white,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            Text(
              'Filter',
              style: TextStyle(fontFamily: 'bold', fontSize: 17),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                'Clear',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildTitle('Category'),
            _buildCategories('Food'),
            _buildTitle('Price'),
            _buildMyStatefulWidget(),
            _buildTitle('Rating'),
            Wrap(
              children: [
                _buildRating(
                    Colors.grey.shade100, Colors.grey, '1', Colors.grey),
                _buildRating(
                    Colors.grey.shade100, Colors.grey, '2', Colors.grey),
                _buildRating(
                    Colors.grey.shade100, Colors.grey, '3', Colors.grey),
                _buildRating(
                    Colors.grey.shade100, Colors.grey, '4', Colors.grey),
                _buildRating(style.appColor, Colors.white, '5', Colors.white),
              ],
            ),
            _buildTitle('Ingredient'),
            _buildIngredient('Sugar'),
            _buildIngredient('Bread'),
            _buildIngredient('Vegan'),
            _buildIngredient('Meat'),
            _buildIngredient('Pista'),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
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

  Widget _buildCategories(txt) {
    List<int> text = [1, 2, 3, 4, 5, 6, 7];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            for (var i in text)
              Column(
                children: [
                  Container(
                    height: 40.0,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    margin: EdgeInsets.only(right: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            '$txt',
                            style: TextStyle(
                                fontFamily: 'semibold', color: Colors.grey),
                          ),
                        ],
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

  Widget _buildMyStatefulWidget() {
    return RangeSlider(
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
    );
  }

  Widget _buildRating(bgclr, icnclr, txt, fntclr) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        height: 40,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgclr,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: icnclr,
            ),
            Text(
              '$txt',
              style: TextStyle(fontFamily: 'bold', fontSize: 17, color: fntclr),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIngredient(txt) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: style.appColor,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text(
              '$txt',
              style: TextStyle(fontFamily: 'bold'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {
          //
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Done',
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
