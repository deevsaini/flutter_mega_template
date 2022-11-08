/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/login.dart';
import 'package:parkme/widget/range_slider_view.dart';
import '../components/styles.dart';

class Filter extends StatefulWidget {
  static const String id = 'Filter';

  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues _values = const RangeValues(10, 25);

  bool isChecked = false;
  void initState() {
    super.initState();
  }

  List<Item> facilityList = <Item>[
    Item('24x7', 'assets/images/f1.png'),
    Item('Secure', 'assets/images/f2.png'),
    Item('Disabled', 'assets/images/f3.png'),
    Item('Charging', 'assets/images/f4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Filter',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: _buildBody(),
      bottomNavigationBar: bottomBtn(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          lightText('Price'),
          SizedBox(height: 16),
          priceBarFilter(),
          SizedBox(height: 40),
          lightText('Vehicle'),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.directions_car, color: Colors.white, size: 34),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.white),
                ),
                checkColor: appColor,
                focusColor: Colors.white,
                activeColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.motorcycle, color: Colors.white, size: 34),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.white),
                ),
                checkColor: appColor,
                focusColor: Colors.white,
                activeColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 40),
          lightText('Services'),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: facilityList.map((e) {
                return _buildFacility(context, e);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget priceBarFilter() {
    return RangeSliderView(
      values: _values,
      onChangeRangeValues: (RangeValues values) {
        _values = values;
      },
    );
  }

  Widget _buildFacility(context, e) {
    return GestureDetector(
      onTap: () {
        print('tap');
        setState(() {
          if (facilityList.contains(e)) {
            facilityList.add(e);
          } else {
            facilityList.add(e);
          }
        });
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            width: 60,
            height: 60,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color:
                  facilityList.contains(e) ? Colors.white : Colors.transparent,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            child: Image.asset(
              e.img,
              width: 24,
              height: 24,
              color: Colors.black38,
            ),
          ),
          lightTextSmall(
            e.name,
          ),
        ],
      ),
    );
  }

  bottomBtn() {
    return Container(
      margin: EdgeInsets.all(30),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Login()));
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.white,
          shadowColor: appColor,
          elevation: 5,
          shape: (RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
        ),
        child: Text(
          'Apply',
          style: TextStyle(fontFamily: 'medium', color: appColor),
        ),
      ),
    );
  }

  lightText(val) {
    return Text(
      val,
      style: TextStyle(fontSize: 14, color: Colors.white70),
    );
  }

  lightTextSmall(val) {
    return Text(
      val,
      style: TextStyle(fontSize: 12, color: Colors.white70),
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
