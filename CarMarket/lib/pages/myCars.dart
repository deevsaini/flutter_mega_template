/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/addNewCar.dart';
import 'package:car/pages/search.dart';
import 'package:flutter/material.dart';

class myCars extends StatefulWidget {
  myCars({Key? key}) : super(key: key);

  static const String page_id = "My Cars";

  @override
  _myCarsState createState() => _myCarsState();
}

class _myCarsState extends State<myCars> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => search())));
        },
        icon: Icon(Icons.search),
      ),
      title: Text(
        'My Cars',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => addNewCar())));
            },
            child: Row(
              children: [
                Icon(
                  Icons.add_circle_outline,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Add car',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSegment(),
              if (tabID == 1)
                sellContainer()
              else if (tabID == 2)
                garageContainer()
              else if (tabID == 3)
                soldContainer()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  child: Text('SELLING CAR', style: segmentText(1)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                    child: Text('GARAGE', style: segmentText(2)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 3;
                    });
                  },
                  child: Container(
                    child: Text('SOLD CAR', style: segmentText(3)),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 20,
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? Colors.black : Colors.grey);
  }

  sellContainer() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          carContainer('assets/images/car.png'),
          carContainer('assets/images/welcome.png'),
          carContainer('assets/images/car.png'),
          carContainer('assets/images/welcome.png'),
          carContainer('assets/images/car.png'),
          carContainer('assets/images/welcome.png'),
        ],
      ),
    );
  }

  Widget carContainer(route) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 30)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            route,
            width: 150,
            height: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '1975 FERRARI 275 GBT',
            style: headText(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '\$467,580.00',
            style: TextStyle(color: appColor),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.message_outlined,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text('6 Offers'),
            ],
          )
        ],
      ),
    );
  }

  Widget garageContainer() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          garage('assets/images/welcome.png'),
          garage('assets/images/welcome.png'),
          garage('assets/images/welcome.png'),
        ],
      ),
    );
  }

  Widget garage(route) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 30)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1975 FERRARI 275 GBT',
                    style: headText(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$467,580.00',
                    style: TextStyle(color: appColor),
                  ),
                ],
              ),
              Image.asset(
                route,
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
            ],
          ),
          Container(
            width: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'NOT FOR SALE',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget soldContainer() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          soldCar('assets/images/welcome.png'),
          soldCar('assets/images/car.png'),
          soldCar('assets/images/welcome.png'),
        ],
      ),
    );
  }

  Widget soldCar(route) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 30)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            route,
            width: 150,
            height: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '1975 FERRARI 275 GBT',
            style: headText(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '\$467,580.00',
            style: TextStyle(color: appColor),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 85,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.black,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'SOLD',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
