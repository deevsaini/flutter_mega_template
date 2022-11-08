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
import 'package:zomato/pages/outletTiming.dart';

class updateTimings extends StatefulWidget {
  updateTimings({Key? key}) : super(key: key);

  static const String page_id = "Update Timings";

  @override
  State<updateTimings> createState() => _updateTimingsState();
}

class _updateTimingsState extends State<updateTimings> {
  String tabName = '';

  List<Item> categories = <Item>[
    Item('Monday'),
    Item('Tuesday'),
    Item('Wednesday'),
    Item('Thursday'),
    Item('Friday'),
    Item('Saturday'),
    Item('Sunday'),
  ];

  List<String> cat = [
    'Add/Edit time',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Update Timings',
          style: headText(),
        ),
        flexibleSpace: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(top: 80),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: appColor))),
                child: Text(
                  'FoodiesWorld Delivery',
                  style: TextStyle(
                      color: appColor, fontFamily: 'medium', fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login using 9876543212 to edit timings',
              style: TextStyle(color: secondaryColor),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: categories.map((e) {
                  return InkWell(
                    onTap: () {
                      setState(
                        () {
                          tabName = e.name;
                        },
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: e.name,
                                      style: TextStyle(
                                          fontFamily: 'medium',
                                          fontSize: 14,
                                          color: Colors.black),
                                      children: <TextSpan>[
                                        tabName == e.name
                                            ? TextSpan(
                                                text: ' Open',
                                                style: TextStyle(
                                                    fontFamily: 'medium',
                                                    fontSize: 16,
                                                    color: secondaryColor))
                                            : TextSpan(
                                                text: ' Closed',
                                                style: TextStyle(
                                                    fontFamily: 'medium',
                                                    fontSize: 16,
                                                    color: secondaryColor)),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down)
                                ],
                              ),
                            ],
                          ),
                        ),
                        tabName == e.name
                            ? Column(
                                children: cat.map((item) {
                                  return ExpansionTile(
                                      backgroundColor: Colors.grey[200],
                                      collapsedBackgroundColor:
                                          Colors.transparent,
                                      title: Container(
                                        // margin: EdgeInsets.only(bottom: 20),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            outletTiming()));
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.add,
                                                    color: Colors.grey,
                                                  ),
                                                  Text(
                                                    item,
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontFamily: 'medium'),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ));
                                }).toList(),
                              )
                            : SizedBox(height: 0)
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //     decoration: BoxDecoration(
            //       border: Border.all(color: Colors.grey),
            //     ),
            //     child: Column(
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             RichText(
            //               text: TextSpan(
            //                 text: 'Monday •',
            //                 style: TextStyle(
            //                     fontFamily: 'medium',
            //                     fontSize: 14,
            //                     color: Colors.black),
            //                 children: <TextSpan>[
            //                   TextSpan(
            //                       text: ' Closed',
            //                       style: TextStyle(
            //                           fontFamily: 'medium',
            //                           fontSize: 16,
            //                           color: Color(0xFFDB3542)))
            //                 ],
            //               ),
            //             ),
            //             Icon(Icons.keyboard_arrow_down)
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            //
            //      Container(
            //         margin: EdgeInsets.only(bottom: 20),
            //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //         decoration: BoxDecoration(
            //           border: Border(
            //             bottom: BorderSide(color: Colors.grey),
            //             left: BorderSide(color: Colors.grey),
            //             right: BorderSide(color: Colors.grey),
            //           ),
            //         ),
            //         child: Column(
            //           children: [
            //             Row(
            //               children: [
            //                 Icon(
            //                   Icons.add,
            //                   color: Colors.grey,
            //                 ),
            //                 Text(
            //                   'Add/Edit time',
            //                   style: TextStyle(color: Colors.grey),
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //       )
            //     : updateContainer('Tuesday •'),
            // updateContainer('Wednesday •'),
            // updateContainer('Thursday •'),
            // updateContainer('Friday •'),
            // updateContainer('Saturday •'),
            // updateContainer('Sunday •'),
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.name);
  final String name;
}
