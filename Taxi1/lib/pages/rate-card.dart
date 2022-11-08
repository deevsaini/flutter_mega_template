/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:async';

import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class RateCardPage extends StatefulWidget {
    RateCardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Rate Card';

    @override
    State<RateCardPage> createState() => _RateCardPageState();
}

class _RateCardPageState extends State<RateCardPage> {

    List<Item> carType = <Item>[
        Item('Car', 'assets/images/car-active.png', 'assets/images/car-deactive.png'),
        Item('Budget', 'assets/images/budget-active.png', 'assets/images/budget-deactive.png'),
        Item('Tuk Tuk', 'assets/images/tuk-tuk-active.png', 'assets/images/tuk-tuk-deactive.png'),
        Item('City', 'assets/images/city-active.png', 'assets/images/city-deactive.png'),
        Item('Van', 'assets/images/van-active.png', 'assets/images/van-deactive.png'),
    ];
    int type = 0;
    double deviceHeight = 0;
    double deviceWidth = 0;

    @override
    Widget build(BuildContext context) {
        deviceHeight = MediaQuery.of(context).size.height;
        deviceWidth = MediaQuery.of(context).size.width;
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appColor,
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                centerTitle: true,
                elevation: 0,
                title: Text('Rate Card',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'medium'
                    ),
                ),
            ),
            body: SingleChildScrollView(
                child: Container(
                    child: Stack(
//                      overflow: Overflow.visible,
                        children: [
                            _buildCarContainer(),

                            Container(
                                padding: EdgeInsets.only(top: 100),
                                child: ListView(
                                    shrinkWrap: true,
                                    children: List.generate([1,2].length, (index) {
                                        return _buildCard();
                                    }),
                                ),
                            ),
                        ],
                    ),
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildCarContainer() {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            height: 200,
            color: style.appColor,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(carType.length, (index) {
                    return Expanded(
                        child: InkWell(
                            onTap: () {
                                setState(() {
                                    type = index;
                                });
                            },
                            child: Container(
                                height: 75,
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text(carType[index].name,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: type == index ? Color.fromARGB(255,94, 95, 102) : Colors.white
                                            ),
                                        ),
                                        Container(
                                            width: double.infinity,
                                            height: 50,
                                            child: Image(
                                                image: index == type ? AssetImage(carType[index].img1) : AssetImage(carType[index].img2),
                                                width: 50,
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        )
                    );
                }),
            ),
        );
    }

    Widget _buildCard() {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: shadowBox(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Car',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'medium'
                      ),
                    ),
                    Text('Toyota Paris / Axio (Hybrid)',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    _buildRow('Min Fare(First 5 km)', 'LKR 380.00'),
                    SizedBox(height: 8),
                    _buildRow('After 5 km(Per km)', 'LKR 72.00'),
                    SizedBox(height: 8),
                    _buildRow('Waiting Time(Per 1 Hour)', 'LKR 420.00'),
                  ],
                ),
              )
            ],
          ),
        );
    }

    shadowBox() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(8)
            ),
            color: Colors.white,
            boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 0.25)
                )
            ]
        );
    }

    Widget _buildRow(val1, val2) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text('$val1',
                    style: TextStyle(fontFamily: 'medium'),
                ),
                Text('$val2',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'medium'
                    ),
                )
            ],
        );
    }

}

class Item {
  const Item(this.name, this.img1, this.img2);
  final String name;
  final String img1;
  final String img2;
}