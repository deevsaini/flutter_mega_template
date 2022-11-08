/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';

class MyHomePage extends StatefulWidget {
    MyHomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Filter';

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final price = [
        '\$ 5,000',
        '\$ 6,000',
        '\$ 7,000',
        '\$ 8,000',
        '\$ 9,000',
        '\$ 10,000',
        '\$ 11,000',
        '\$ 12,000'
    ];

    final km = [
        '13.5 km',
        '13.6 km',
        '13.7 km',
        '13.8 km',
        '13.9 km',
        '14.0 km',
        '14.2 km',
        '14.3 km',
        '14.4 km',
        '14.5 km',

    ];

    int selectedIndex1 = 0;
    int selectedIndex2 = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                            DirectSelect(
                                itemExtent: 50.0,
                                selectedIndex: selectedIndex1,
                                child: MySelectionItem(
                                  isForList: false,
                                  title: price[selectedIndex1],
                                ),
                                onSelectedItemChanged: (int? index) {
                                    setState(() {
                                        print("===");
//                                        selectedIndex1 = index;
                                    });
                                },
                                items: price.map((val) => MySelectionItem(
                                    title: val,
                                )).toList()),
                        ]
                    ),
                ),
            ),
        );
    }
}

//You can use any Widget
class MySelectionItem extends StatelessWidget {
    final String title;
    final bool isForList;

    const MySelectionItem({Key? key, this.title = '', this.isForList = true}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            height: 60.0,
            child: isForList ? Padding(
                child: _buildItem(context),
                padding: EdgeInsets.all(10.0),
            ) :
            Card(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Stack(
                    children: <Widget>[
                        _buildItem(context),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.arrow_drop_down),
                        )
                    ],
                ),
            ),
        );
    }

    _buildItem(BuildContext context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(title),
        );
    }
}