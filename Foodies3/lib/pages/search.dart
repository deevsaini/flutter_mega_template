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
import '../helper/style.dart' as style;

class SearchPage extends StatefulWidget {
    SearchPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Search';

    @override
    State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

    List<Item> foods = <Item>[
        Item('assets/images/food1.jpg', 'Turkey Breast'),
        Item('assets/images/food2.jpg', 'Black Forest Ham'),
        Item('assets/images/food3.jpg', 'Albacore Tuna'),
        Item('assets/images/food4.jpg', 'Mac and Cheese'),
        Item('assets/images/food5.jpg', 'Asian Noodle'),
        Item('assets/images/food6.jpg', 'Kimchi'),
        Item('assets/images/food7.jpg', 'Skillet Cookie'),
        Item('assets/images/food8.jpg', 'Chilli Lime Tofu'),
        Item('assets/images/food9.jpg', 'Steak and Cheest'),
    ];

    List<String> history = ['Milk Tea', 'Rice Chicken', 'Coffee'];

    String tabID = 'Foods';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appColor,
                automaticallyImplyLeading: false,
                elevation: 0,
                toolbarHeight: 90,
                title: TextField(
                    decoration: style.textInputDecoration('Search'),
                ),
                actions: [
                    TextButton(
                        onPressed: () {
                            Navigator.of(context).pop();
                        },
                        child: Text('Exit',
                            style: TextStyle(fontFamily: 'medium'),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                        ),
                    )
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            padding: EdgeInsets.all(16),
                            color: Colors.white,
                            child: Column(
                                children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            _buildTitleText('History'),
                                            Text('Clear All',
                                                style: TextStyle(
                                                    color: style.appGreyText
                                                ),
                                            ),
                                        ],
                                    ),
                                    SizedBox(height: 16),
                                    ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        children: List.generate(history.length, (index) {
                                            return Container(
                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                decoration: style.borderBottom(),
                                                child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Text(history[index], style: TextStyle(color: style.appGreyText, fontSize: 16),),
                                                        InkWell(
                                                            child: Icon(Icons.close, color: style.appGreyText, size: 20),
                                                        )
                                                    ],
                                                ),
                                            );
                                        }),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                        children: [
                                            Text('View more', style: TextStyle(color: style.appColor)),
                                            Icon(Icons.keyboard_arrow_down, color: style.appColor)
                                        ],
                                    ),
                                    SizedBox(height: 16),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            _buildTitleText('Suggestions'),
                                            Text('View All',
                                                style: TextStyle(
                                                    color: style.appColor
                                                ),
                                            ),
                                        ],
                                    ),
                                    SizedBox(height: 16),

                                    Container(
                                        height: 60,
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(foods.sublist(0,3).length, (index) {
                                                return _buildSingleItem(foods[index]);
                                            }),
                                        ),
                                    ),

                                    Container(
                                        height: 60,
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(foods.sublist(3, 7).length, (index) {
                                                return _buildSingleItem(foods[index]);
                                            }),
                                        ),
                                    ),

                                ],
                            ),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    RichText(
                                        text: TextSpan(
                                            text: 'Approximately ',
                                            style: TextStyle(fontSize: 16, color: Colors.grey, fontFamily: 'regular'),
                                            children: <TextSpan>[
                                                TextSpan(text: '300 ',
                                                    style: TextStyle(color: style.appColor, fontFamily: 'semi-bold')
                                                ),
                                                TextSpan(text: ' results.',
                                                    style: TextStyle(color: Colors.grey, fontFamily: 'regular')
                                                ),
                                            ],
                                        ),
                                    ),
                                    SizedBox(height: 16),
                                    ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        children: List.generate(foods.length, (index) {
                                            return Container(
                                                decoration: style.whiteContainer(),
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Row(
                                                    children: [
                                                        Container(
                                                            height: 96,
                                                            width: 92,
                                                            decoration:  style.leftCornerRoundImage(foods[index].img),
                                                        ),

                                                        Expanded(
                                                            child: Container(
                                                                padding: EdgeInsets.all(8),
                                                                child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                        Row(
                                                                            children: [
                                                                                Expanded(
                                                                                    child: Text(foods[index].name,
                                                                                        style: TextStyle(
                                                                                            fontSize: 16,
                                                                                            fontFamily: 'medium'
                                                                                        ),
                                                                                    )
                                                                                ),
                                                                                InkWell(
                                                                                    onTap: () {},
                                                                                    child: Icon(Icons.bookmark_outline, color: style.appGreyText),
                                                                                )
                                                                            ],
                                                                        ),

                                                                        SizedBox(height: 5),
                                                                        Row(
                                                                            children: [
                                                                                Icon(Icons.location_on, color: style.appGreyText, size: 16),
                                                                                SizedBox(width: 4),
                                                                                Expanded(
                                                                                    child: Text('Royal Drink & Coffee',
                                                                                        style: TextStyle(
                                                                                            color: style.appGreyText,
                                                                                            fontSize: 13
                                                                                        ),
                                                                                    ),
                                                                                )
                                                                            ],
                                                                        ),

                                                                        SizedBox(height: 5),

                                                                        Row(
                                                                            children: [
                                                                                Expanded(
                                                                                    child: Row(
                                                                                        children: [
                                                                                            Icon(Icons.star, size: 18, color: style.appColor),
                                                                                            SizedBox(width: 3),
                                                                                            RichText(
                                                                                                textAlign: TextAlign.center,
                                                                                                text: TextSpan(
                                                                                                    text: '4.3 ',
                                                                                                    style: TextStyle(color: style.appColor, fontFamily: 'regular'),
                                                                                                    children: <TextSpan>[
                                                                                                        TextSpan(text: '(120 Reviews)',
                                                                                                            style: TextStyle(color: style.appGreyText)
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                            ),
                                                                                        ],
                                                                                    )
                                                                                ),
                                                                                Text('\$5.6',
                                                                                    style: TextStyle(
                                                                                        color: style.appColor
                                                                                    ),
                                                                                ),
                                                                            ],
                                                                        )
                                                                    ],
                                                                ),
                                                            )
                                                        )
                                                    ],
                                                ),
                                          );
                                        }),
                                    )
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildTitleText(val) {
        return Text('$val',
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 16
            ),
        );
    }

    Widget _buildSingleItem(val) {
        return Container(
            width: 220,
            child: Row(
                children: [
                    Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(right: 10),
                        decoration: style.roundedImage(val.img),
                    ),
                    Text(val.name)
                ],
            ),
        );
    }

}

class Item {
  const Item(this.img, this.name);
  final String img;
  final String name;
}