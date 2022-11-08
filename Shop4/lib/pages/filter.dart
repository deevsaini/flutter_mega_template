/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shopping/helper/style.dart';

class filter extends StatefulWidget {
  filter({Key? key}) : super(key: key);

  static const String page_id = "Filter";

  @override
  _filterState createState() => _filterState();
}

enum SingingCharacter { first, second, third }

class _filterState extends State<filter> {
  SingingCharacter? _character = SingingCharacter.first;
  bool value1 = true;
  bool value2 = false;
  bool value3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Filter',
        style: TextStyle(
          fontFamily: 'medium',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Done',
              style: blueText(),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SIZE',
                    style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: sizeButton(),
                        child: Center(
                          child:
                              Text('XS', style: TextStyle(fontFamily: 'bold')),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: sizeButton(),
                        child: Center(
                          child:
                              Text('S', style: TextStyle(fontFamily: 'bold')),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: sizeButton(),
                        child: Center(
                          child:
                              Text('M', style: TextStyle(fontFamily: 'bold')),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: sizeButton(),
                        child: Center(
                          child:
                              Text('L', style: TextStyle(fontFamily: 'bold')),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: sizeButton(),
                        child: Center(
                          child:
                              Text('XL', style: TextStyle(fontFamily: 'bold')),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Center(
                          child:
                              Text('XXL', style: TextStyle(fontFamily: 'bold')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COLORS',
                    style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 22,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 22,
                        // child: Icon(Icons.check),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 22,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 22,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        radius: 22,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BRANDS',
                    style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fred Perry'),
                      Checkbox(
                        value: value1,
                        onChanged: (value) {
                          setState(() {
                            value1 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fred Perry'),
                      Checkbox(
                        value: value2,
                        onChanged: (value) {
                          setState(() {
                            value2 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fred Perry'),
                      Checkbox(
                        value: value3,
                        onChanged: (value) {
                          setState(() {
                            value3 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PRICE',
                    style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text('Upto \$ 50'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.first,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('\$ 50 - \$ 100'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.second,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('\$ 100 and Above'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.third,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
