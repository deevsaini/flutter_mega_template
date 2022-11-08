/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/profile.dart';
import '../components/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeProfile extends StatefulWidget {
  static const String id = 'HomeProfile';

  const HomeProfile({Key? key}) : super(key: key);

  @override
  _HomeProfileState createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  String dropdownValueTime = 'This Week';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        centerTitle: true,
        title: Text('Home', style: TextStyle(color: Colors.white)),
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            child: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/man.png'),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
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
      child: Column(
        children: [
          Container(
              color: backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildProfile(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .33,
                      ),
                      _buildProfileDtl()
                    ],
                  ),
                  Positioned(
                      top: 100,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildCenterCard()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        color: appColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Joohn",
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontFamily: 'medium')),
            SizedBox(height: 6),
            Text("We know you get much money. You rented your property good",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                )),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterCard() {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              blackBoldText("All Listing"),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildChart(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldBlue("35"),
                      greyText("Active"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldBlue("10"),
                      greyText("Pending"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: blackBoldText("Insigt")),
              buildDropDowntime()
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    blackText("Visitor"),
                    SizedBox(height: 5),
                    blackBoldHeading("430"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    blackText("Customer"),
                    SizedBox(height: 5),
                    blackBoldHeading("430"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileDtl() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          blackBoldText('Your progress'),
          SizedBox(height: 10),
          greyText(
              'Improve your profile to fill you room quicker search than ever')
        ],
      ),
    );
  }

  Widget buildDropDowntime() {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconEnabledColor: Colors.white,
        value: dropdownValueTime,
        onChanged: (newValue) {
          setState(() {
            dropdownValueTime = newValue!;
          });
        },
        items: [
          'This Week',
          'This Year',
          'This Month',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.white70, fontSize: 11),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildChart() {
    return CircularPercentIndicator(
      radius: 32.0,
      lineWidth: 3.0,
      percent: 0.7,
      animation: true,
      animationDuration: 1200,
      center: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: blackBoldText('35'),
      ),
      progressColor: appColor,
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Colors.white,
    );
  }
}
