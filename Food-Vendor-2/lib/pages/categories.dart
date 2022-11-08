import 'package:flutter/cupertino.dart';
/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';

class categories extends StatefulWidget {
  categories({Key? key}) : super(key: key);

  static const String page_id = "Categories";

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  bool _breakValue = false;
  bool _lunchValue = false;
  bool _dinnerValue = false;
  bool _snackValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return aleartdialog();
              });
        },
        label: Text(
          'ADD',
          style: TextStyle(fontFamily: 'medium'),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.all(16),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       TextButton(
      //         onPressed: () {
      //           showDialog(
      //               context: context,
      //               builder: (BuildContext context) {
      //                 return aleartdialog();
      //               });
      //         },
      //         child: Text(
      //           'ADD',
      //           style: TextStyle(color: Colors.white, fontFamily: 'medium'),
      //         ),
      //         style: ButtonStyle(
      //             shape: MaterialStateProperty.all(
      //               RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(20.0)),
      //             ),
      //             padding: MaterialStateProperty.all<EdgeInsets>(
      //                 EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
      //             backgroundColor: MaterialStateProperty.all(appColor)),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Categories',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BreakFast',
                    style: TextStyle(fontSize: 16),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      activeColor: appColor,
                      value: _breakValue,
                      onChanged: (value) {
                        setState(() {
                          _breakValue = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lunch',
                    style: TextStyle(fontSize: 16),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      activeColor: appColor,
                      value: _lunchValue,
                      onChanged: (value) {
                        setState(() {
                          _lunchValue = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dinner',
                    style: TextStyle(fontSize: 16),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      activeColor: appColor,
                      value: _dinnerValue,
                      onChanged: (value) {
                        setState(() {
                          _dinnerValue = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Snacks',
                    style: TextStyle(fontSize: 16),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      activeColor: appColor,
                      value: _snackValue,
                      onChanged: (value) {
                        setState(() {
                          _snackValue = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget aleartdialog() {
    return AlertDialog(
      contentPadding: EdgeInsets.only(top: 10),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Manage Category',
                    style: headText(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: OutlineInputBorder(),
                      labelText: 'Category Name',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 6,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'CANCEL',
                        style: TextStyle(color: appColor, fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'OK',
                          style:
                              TextStyle(color: appColor, fontFamily: 'medium'),
                        ),
                      ),
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
