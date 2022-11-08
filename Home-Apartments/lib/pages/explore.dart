/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/widget/range_slider_view.dart';
import '../components/styles.dart';

class Explore extends StatefulWidget {
  static const String id = 'Explore';

  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  RangeValues _values = const RangeValues(100, 600);
  String dropdownValuePrice = 'Price';
  String dropdownValueType = 'Sell Type';
  String dropdownValueAmenity = 'Amenities';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Explore', style: TextStyle(color: Colors.black)),
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
            boldHeading('Find your property'),
            SizedBox(height: 10),
            SearchBox('Find district, street name...', () {}),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildDropDownPrice(),
                buildDropDownType(),
                buildDropDownAmenity(),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  chips('\$10-\$30,000'),
                  chips('Villa'),
                  chips('Apartment'),
                ],
              ),
            ),
            SizedBox(height: 16),
            priceBarFilter(),
            SizedBox(height: 16),
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

  Widget priceBarFilter() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'The average price in this area is \$ 41,000',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
        ),
        RangeSliderView(
          values: _values,
          onChangeRangeValues: (RangeValues values) {
            _values = values;
          },
        ),
        const SizedBox(
          height: 8,
        )
      ],
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

  Widget buildDropDownPrice() {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(0, 2),
              blurRadius: 12.0),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 18,
        iconEnabledColor: appColor,
        value: dropdownValuePrice,
        onChanged: (newValue) {
          setState(() {
            dropdownValuePrice = newValue!;
          });
        },
        items: [
          'Price',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: appColor, fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildDropDownType() {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(0, 2),
              blurRadius: 12.0),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 18,
        iconEnabledColor: appColor,
        value: dropdownValueType,
        onChanged: (newValue) {
          setState(() {
            dropdownValueType = newValue!;
          });
        },
        items: [
          'Sell Type',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: appColor, fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildDropDownAmenity() {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(0, 2),
              blurRadius: 12.0),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 18,
        iconEnabledColor: appColor,
        value: dropdownValueAmenity,
        onChanged: (newValue) {
          setState(() {
            dropdownValueAmenity = newValue!;
          });
        },
        items: [
          'Amenities',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: appColor, fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }
}
