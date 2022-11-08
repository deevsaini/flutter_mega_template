/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class FavouritePage extends StatefulWidget {
    FavouritePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Favourite';

    @override
    State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {

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

    String tabID = 'Foods';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appGrey,
                automaticallyImplyLeading: false,
                elevation: 0,
                title: Text('Favourite'),
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                child: Column(
                    children: [
                        Container(
                            color: Colors.white,
                            child: _buildSegmentContainer(),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                children: List.generate(foods.length, (index) {
                                    return _buildSingleItem(foods[index]);
                                }),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildSegmentContainer() {
        return Row(
            children: [
                Expanded(
                    child: _buildSingleSegment('Foods')
                ),
                Expanded(
                    child: _buildSingleSegment('Restaurants')
                ),
            ],
        );
    }

    Widget _buildSingleSegment(val) {
        return InkWell(
            onTap: () {
                setState(() {
                    tabID = val;
                });
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: singleSegment(val),
                child: Text('$val',
                    textAlign: TextAlign.center,
                    style: segmentText(val),
                ),
            ),
        );
    }

    singleSegment(val) {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: val == tabID ? style.appColor : Colors.transparent,
                    width: 2
                )
            )
        );
    }

    segmentText(val) {
        return TextStyle(
            fontSize: 16,
            fontFamily: 'medium',
            color: val == tabID ? style.appColor : style.appGreyText
        );
    }

    Widget _buildSingleItem(food) {
        return Container(
            decoration: style.whiteContainer(),
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
                children: [
                    Container(
                        height: 96,
                        width: 92,
                        decoration: style.leftCornerRoundImage(food.img),
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
                                                child: Text(food.name,
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
    }

}

class Item {
  const Item(this.img, this.name);
  final String img;
  final String name;
}