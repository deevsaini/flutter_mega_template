/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
//import 'package:flutter/material.dart';
//import 'package:direct_select/direct_select.dart';
//
//class MyHomePage extends StatefulWidget {
//    MyHomePage({Key? key, Title? title}) : super(key: key);
//    final String title = '';
//    static const String page_id = 'Filter';
//
//    @override
//    State<MyHomePage> createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//    final elements1 = [
//      "Breakfast",
//      "Lunch",
//      "2nd Snack",
//      "Dinner",
//      "3rd Snack",
//    ];
//
//    int selectedIndex1 = 0;
//
////    List<Widget> _buildItems1(val) {
////        return elements1.map((val) => MySelectionItem(
////            title: val,
////        )).toList();
////    }
//
//    @override
//    Widget build(BuildContext context) {
//        return Scaffold(
//            appBar: AppBar(
//                title: Text(widget.title),
//            ),
//            body: Padding(
//                padding: const EdgeInsets.all(15.0),
//                child: Center(
//                    child: Column(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                        children: <Widget>[
//                            DirectSelect(
//                                itemExtent: 70.0,
//                                selectedIndex: selectedIndex1,
//                                child: MySelectionItem(
//                                    isForList: false,
//                                    title: 'Hello',
//                                ),
//                                onSelectedItemChanged: (index) {
//                                    setState(() {
//              //                        selectedIndex1 = index;
//                                    });
//                                },
////                                items: _buildItems1(elements1[selectedIndex1])
//                                items: elements1.map((e) {
//                                    return Text(e);
//                                }).toList(),
//                            ),
//                        ]
//                    ),
//                ),
//            ),
//        );
//    }
//}
//
////You can use any Widget
//class MySelectionItem extends StatelessWidget {
//    final String title = 'Hii';
//    final bool isForList;
//
//    const MySelectionItem({Key? key, String? title, this.isForList = true}) : super(key: key);
//
//    @override
//    Widget build(BuildContext context) {
//        return Container(
//            height: 500,
//            decoration: BoxDecoration(
//                border: Border.all(
//                    width: 3,
//                    color: Colors.pink
//                )
//            ),
////            child: Padding(
////                child: _buildItem(context),
////                padding: EdgeInsets.all(10.0),
////            )
//
//            child: Column(
//                children: <Widget>[
//                    _buildItem(context)
//                ],
//            ),
//        );
//    }
//
//    _buildItem(BuildContext context) {
//        return Container(
//            decoration: BoxDecoration(
//                border: Border.all(
//                    width: 2,
//                    color: Colors.green
//                )
//            ),
//            width: MediaQuery.of(context).size.width,
//            alignment: Alignment.center,
//            child: Text(title),
//        );
//    }
//}