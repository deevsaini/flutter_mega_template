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
import 'package:realestate/helper/drawer.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/notification.dart';
import 'package:realestate/pages/searchAgent.dart';

class favAgent extends StatefulWidget {
  favAgent({Key? key}) : super(key: key);

  static const String page_id = "Favourite Agent";

  @override
  _favAgentState createState() => _favAgentState();
}

class _favAgentState extends State<favAgent> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Item> categories = <Item>[
    Item('assets/images/girl.jpg'),
    Item('assets/images/profile.jpg'),
    Item('assets/images/profile.jpg'),
    Item('assets/images/girl.jpg'),
    Item('assets/images/girl.jpg'),
    Item('assets/images/profile.jpg'),
  ];

  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.dehaze_outlined),
      ),
      title: Text(
        'Favourite Agent',
        style: headText(),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => searchAgent()));
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return filterAgent();
                    });
              },
              icon: Icon(Icons.segment),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              shrinkWrap: true,
              childAspectRatio: 65 / 100,
              physics: ScrollPhysics(),
              children: categories.map((e) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(e.img), fit: BoxFit.cover),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            )),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Johan Smith',
                                style: headText(),
                              ),
                              Text(
                                '10 year Experience',
                                style: TextStyle(color: appColor),
                              ),
                              Row(
                                children: [
                                  ratingContainer(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('4.9')
                                ],
                              ),
                              Text(
                                '\$20.00/hr',
                                style: TextStyle(
                                    fontFamily: 'medium',
                                    fontSize: 16,
                                    color: appColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget filterAgent() {
    RangeValues _currentRangeValues = const RangeValues(0, 40);
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: appColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Text(
                  'Availability',
                  style: TextStyle(
                      fontFamily: 'medium', fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Availability Today'),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        activeColor: appColor,
                        value: _switchValue,
                        onChanged: (bool? value) {
                          setState(() {
                            _switchValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: appColor.withOpacity(0.1),
                ),
                child: Text(
                  'Short Options',
                  style: TextStyle(
                      fontFamily: 'medium', fontSize: 16, color: appColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    optionContainer('Popularity'),
                    optionContainer('Star Rating (height first)'),
                    optionContainer('Best Review first'),
                    optionContainer('Height Review first'),
                    optionContainer('Most Review first'),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: appColor.withOpacity(0.1),
                ),
                child: Text(
                  'Gender',
                  style: TextStyle(
                      fontFamily: 'medium', fontSize: 16, color: appColor),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.radio_button_checked,
                          color: appColor.withOpacity(0.2),
                        ),
                      ),
                      Text('Male')
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.radio_button_checked,
                          color: appColor.withOpacity(0.2),
                        ),
                      ),
                      Text('Female')
                    ],
                  )
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: appColor.withOpacity(0.1),
                ),
                child: Text(
                  'Work Experience(years)',
                  style: TextStyle(
                      fontFamily: 'medium', fontSize: 16, color: appColor),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        experience('Any Experience'),
                        SizedBox(
                          width: 10,
                        ),
                        experience('1-2 years')
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        experience('1-5 years'),
                        SizedBox(
                          width: 10,
                        ),
                        experience('1-10 years'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: appColor.withOpacity(0.1),
                ),
                child: Text(
                  'Price Range',
                  style: TextStyle(
                      fontFamily: 'medium', fontSize: 16, color: appColor),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$20',
                          style: TextStyle(color: appColor, fontSize: 16),
                        ),
                        Text(
                          '\$250',
                          style: TextStyle(color: appColor, fontSize: 16),
                        ),
                      ],
                    ),
                    RangeSlider(
                      activeColor: appColor,
                      values: _currentRangeValues,
                      max: 250,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.amber,
                      fontFamily: 'semi-bold',
                      fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.amber.shade50,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget experience(text) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: appColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: appColor),
        ),
      ),
    );
  }

  Widget optionContainer(text) {
    return Container(
      // margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.radio_button_checked,
              color: appColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final String img;
}
