/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:flutter/material.dart';

class comparision extends StatefulWidget {
  comparision({Key? key}) : super(key: key);

  static const String page_id = "Comparision";

  @override
  _comparisionState createState() => _comparisionState();
}

class _comparisionState extends State<comparision> {
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
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Cars Compare',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/welcome.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          'FERRARI',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '2015 FERRARI SERGIO',
                          style: TextStyle(fontFamily: 'medium', fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.repeat),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/welcome.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          'FERRARI',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '2015 FERRARI SERGIO',
                          style: TextStyle(fontFamily: 'medium', fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildSegment(),
            if (tabID == 1)
              featuresContainer()
            else if (tabID == 2)
              specificationContainer()
            else if (tabID == 3)
              economyContainer()
            else if (tabID == 4)
              warrantyContainer()
            else if (tabID == 5)
              dimentionContainer()
          ],
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
                  child: Text('FEATURES', style: segmentText(1)),
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
                  child: Text('SPECIFICATIONS', style: segmentText(2)),
                ),
              ),
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
                  child: Text('FUEL ECONOMY', style: segmentText(3)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 4;
                  });
                },
                child: Container(
                  child: Text('WARRANTY', style: segmentText(4)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 5;
                  });
                },
                child: Container(
                  child: Text('DIMENSIONS', style: segmentText(5)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 18,
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? Colors.black : Colors.grey);
  }

  Widget featuresContainer() {
    return Container(
      child: Column(
        children: [
          commonContainer('360-DEGREE CAMERA', 'YES', 'NO'),
          commonContainer('ALARM', 'YES', 'NO'),
          commonContainer('APPLE CARPLAY/ANDROID AUDIO', 'YES', 'NO'),
          commonContainer('AUDIO AND CRUSE CONTROL ON STEERING', 'YES', 'NO'),
          commonContainer('AUTO CLIMATE CONTROL', 'YES', 'NO'),
          commonContainer('360-DEGREE CAMERA', 'YES', 'NO'),
        ],
      ),
    );
  }

  Widget specificationContainer() {
    return Container(
      child: Column(
        children: [
          commonContainer('ENGINE POWER', '503 HP', 'NO'),
          commonContainer('ENGINE TOURQUE', '4000 RPM', '3900 RPM'),
          commonContainer('ENGINE DISPLACEMENT', '4.0 L', '4.0 L'),
          commonContainer('DRIVETRAIN', 'REAR WHEEL', 'FRONT WHEEL'),
          commonContainer('TIRE SIZE', '255/40R20', '255/50R17'),
        ],
      ),
    );
  }

  Widget economyContainer() {
    return Container(
      child: Column(
        children: [
          commonContainer('MPG CTY/HWY/AVG', '18/25/21 MPG', '25/33/28 MPG'),
          commonContainer('FUAL CAPACITY', '19.3 GAL', '19.6 GAL'),
          commonContainer('FUAL TYPE', 'DIESEL', 'DIESEL'),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Expanded(
                flex: 6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('SEE DETAILS'),
                  style: simpleButton(),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('SEE DETAILS'),
                  style: simpleButton(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget warrantyContainer() {
    return Container(
      child: Column(
        children: [
          commonContainer('BASIC', '4 YEAR/50000 MI', '4 YEAR/50000 MI'),
          commonContainer('DRIVETRAIN', '4 YEAR/50000 MI', '4 YEAR/50000 MI'),
          commonContainer(
              'ROADSIDE ASSISTENCE', 'UNLIMITED MI', 'UNLIMITED MI'),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Expanded(
                flex: 6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('SEE DETAILS'),
                  style: simpleButton(),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('SEE DETAILS'),
                  style: simpleButton(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget dimentionContainer() {
    return Container(
      child: Column(
        children: [
          commonContainer('SEATING CAPACITY', '2 SEATS', '2 SEATS'),
          commonContainer('CARGO CAPACITY', '13.0 CU FT.', '13.0 CU FT.'),
          commonContainer('WIDTH', '76.4 IN', '72.6 IN'),
          commonContainer('HEIGHT', '76.4 IN', '76.4 IN'),
          commonContainer('CURB WEIGHT', '3483 LB', '3483 LB'),
        ],
      ),
    );
  }

  Widget commonContainer(head, left, right) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Text(
            head,
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(left),
              Text(right),
            ],
          )
        ],
      ),
    );
  }
}
