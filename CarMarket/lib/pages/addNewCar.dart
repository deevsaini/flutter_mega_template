/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/addCarDetails.dart';
import 'package:flutter/material.dart';

class addNewCar extends StatefulWidget {
  addNewCar({Key? key}) : super(key: key);

  static const String page_id = "Add New Car";

  @override
  _addNewCarState createState() => _addNewCarState();
}

class _addNewCarState extends State<addNewCar> {
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
        'Add new car',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
        ),
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: appColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt_rounded,
                            color: appColor,
                          ),
                          Text(
                            'Add photos',
                            style: TextStyle(color: appColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: appColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          height: 95,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                color: appColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: appColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          height: 95,
                          width: double.infinity,
                          child: Icon(
                            Icons.add_circle_outline,
                            color: appColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: appColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      height: 95,
                      width: double.infinity,
                      child: Icon(
                        Icons.add_circle_outline,
                        color: appColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: appColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      height: 95,
                      width: double.infinity,
                      child: Icon(
                        Icons.add_circle_outline,
                        color: appColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: appColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      height: 95,
                      width: double.infinity,
                      child: Icon(
                        Icons.add_circle_outline,
                        color: appColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'SET PRICE',
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'medium', fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: UnderlineInputBorder(),
                    hintText: '\$20,000'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'KM\'S DRIVEN',
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'medium', fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: UnderlineInputBorder(),
                    hintText: '10,244'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'BRAND',
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'medium', fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Porsche'),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 1,
                            child: selectBrand(),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'YEAR',
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'medium', fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: UnderlineInputBorder(),
                    hintText: '2022'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'SERIES',
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'medium', fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    border: UnderlineInputBorder(),
                    hintText: 'XY'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'POWER FEATURES',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'medium', fontSize: 16),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 1,
                            child: powerFeature(),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text('Radio Cassette'),
              Text('Gesture Controll'),
              Text('Radio Cassette'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'IN CAR ENTERTAINMENT',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'medium', fontSize: 16),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 1,
                            child: carEntertain(),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text('One-Touch power windows'),
              Text('Heated mirrors'),
              Text('USB connections'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => addCarDetails()));
                },
                child: Text('SAVE'),
                style: simpleButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget selectBrand() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          color: appColor,
          child: Column(
            children: [
              AppBar(
                backgroundColor: appColor,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
                title: Text(
                  'Select Brand',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    brandContainer('assets/images/logo2.jpg', 'Audi'),
                    brandContainer('assets/images/logo1.png', 'BMW'),
                    brandContainer('assets/images/logo2.jpg', 'Audi'),
                    brandContainer('assets/images/logo1.png', 'BMW'),
                    brandContainer('assets/images/logo2.jpg', 'Audi'),
                    brandContainer('assets/images/logo1.png', 'BMW'),
                    brandContainer('assets/images/logo2.jpg', 'Audi'),
                    brandContainer('assets/images/logo1.png', 'BMW'),
                    brandContainer('assets/images/logo1.png', 'BMW'),
                    brandContainer('assets/images/logo2.jpg', 'Audi'),
                    brandContainer('assets/images/logo1.png', 'BMW'),
                    brandContainer('assets/images/logo2.jpg', 'Audi'),
                    brandContainer('assets/images/logo1.png', 'BMW'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget brandContainer(route, name) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image:
                  DecorationImage(image: AssetImage(route), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              name,
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Widget powerFeature() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          color: appColor,
          child: Column(
            children: [
              AppBar(
                backgroundColor: appColor,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
                title: Text(
                  'Power features',
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Radio Cassette'),
                        Icon(Icons.check),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Whether Forecast'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Guester Control'),
                        Icon(Icons.check),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Electic door mirrors'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lightning systems'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Multifunctionl steering wheel'),
                        Icon(Icons.check),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Radio Cassette'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lightning systems'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Multifunctionl steering wheel'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget carEntertain() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          color: appColor,
          child: Column(
            children: [
              AppBar(
                backgroundColor: appColor,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
                title: Text(
                  'In Car Entertainment',
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('One-touch power windows'),
                        Icon(Icons.check),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Handsfree entry'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Heated mirrors'),
                        Icon(Icons.check),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('USB connection'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Am/Fm stereo'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Heated mirrors'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
