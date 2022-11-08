/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/add_properties_step3.dart';
import 'package:home/pages/login.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class AddPropertyStep2 extends StatefulWidget {
  static const String id = 'AddPropertyStep2';

  const AddPropertyStep2({Key? key}) : super(key: key);

  @override
  _AddPropertyStep2State createState() => _AddPropertyStep2State();
}

class _AddPropertyStep2State extends State<AddPropertyStep2> {
  int selectID = 1;

  String dropdownValueSize = 'Le 40 m2';
  List<Item> facilityList = <Item>[
    Item('Bed', 'assets/images/bed.png'),
    Item('Water', 'assets/images/water.png'),
    Item('Parking', 'assets/images/garage.png'),
    Item('Toilet', 'assets/images/towel.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        toolbarHeight: 70,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Step 2', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.85,
          color: Colors.white,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldHeading("Set listing type"),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8.0,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildSelect('Private', 1),
                        _buildSelect('Shared', 2),
                        _buildSelect('Entire', 3),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  blackBoldText('What the size of property?'),
                  SizedBox(height: 16),
                  blackText("Size Property"),
                  buildDropDownSize(),
                  SizedBox(height: 10),
                  blackBoldText('Any person live in there?'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: textFieldno('No of Female')),
                      SizedBox(width: 10),
                      Expanded(child: textFieldno('No of Male'))
                    ],
                  ),
                  SizedBox(height: 10),
                  blackBoldText('Ammenities?'),
                  SizedBox(height: 10),
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
              SizedBox(height: 20),
              MyElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddPropertyStep3()));
                },
                text: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelect(title, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        margin: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: selectID == id ? appColor : Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Text(title,
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 14,
                color: selectID == id ? Colors.white : Colors.black54)),
      ),
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
      child: Container(
        padding: EdgeInsets.all(12),
        width: 80,
        height: 80,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: facilityList.contains(e) ? Colors.white : Colors.transparent,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                offset: const Offset(0, 2),
                blurRadius: 8.0),
          ],
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Column(
          children: [
            Image.asset(
              e.img,
              width: 24,
              height: 24,
              color: Colors.black38,
            ),
            SizedBox(height: 8),
            greyTextSmall(
              e.name,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropDownSize() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButton<String>(
              underline: SizedBox(),
              iconSize: 0.0,
              value: dropdownValueSize,
              onChanged: (newValue) {
                setState(() {
                  dropdownValueSize = newValue!;
                });
              },
              items: [
                'Le 40 m2',
                'Le 50 m2',
                '4x3 50 m2',
                'Le 100 m2',
                '200 sq feet',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Icon(
            Icons.square_foot,
            color: appColor2,
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
