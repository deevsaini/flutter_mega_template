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

class RatingPage extends StatefulWidget {
    RatingPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Rating';

    @override
    State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {

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

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appGrey,
                elevation: 0,
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Rating', style: style.boldTitle()),
                        SizedBox(height: 20),
                        Text('Restaurants',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                            ),
                        ),
                        SizedBox(height: 16),

                        _buildReviewContainer(),

                        Text('Foods',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                            ),
                        ),
                        SizedBox(height: 16),

                        _buildReviewContainer(),
                    ],
                ),
            ),
        );
    }

    Widget _buildReviewContainer() {
        return Container(
            decoration: style.whiteContainer(),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
                children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: style.borderBottom(),
                        child: Row(
                            children: [
                                Container(
                                    height: 90,
                                    width: 90,
                                    decoration: style.roundedImage('assets/images/food1.jpg'),
                                ),
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Row(
                                                    children: [
                                                        Expanded(
                                                            child: Text('Kichi Coffee & Drink',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontFamily: 'medium'
                                                              ),
                                                            )
                                                        ),
                                                        InkWell(
                                                          onTap: () {},
                                                          child: Icon(Icons.bookmark, color: style.appColor),
                                                        )
                                                    ],
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                    children: [
                                                        Icon(Icons.location_on, color: style.appGreyText, size: 16),
                                                        SizedBox(width: 4),
                                                        Expanded(
                                                          child: Text('76A Eighth Avenue, New York.',
                                                            style: TextStyle(
                                                                color: style.appGreyText,
                                                                fontSize: 13
                                                            ),
                                                          ),
                                                        )
                                                    ],
                                                ),
                                            ],
                                        ),
                                    )
                                )
                            ],
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                Text('What do you think about this restaurants?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'semi-bold'
                                    ),
                                ),
                                SizedBox(height: 16),
                                Text(' Your feedback will help us improve restaurants experiance better. ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: style.appGreyText
                                    ),
                                ),
                                SizedBox(height: 24),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Icon(Icons.star, color: style.appGreyText, size: 36),
                                        Icon(Icons.star, color: style.appGreyText, size: 36),
                                        Icon(Icons.star, color: style.appGreyText, size: 36),
                                        Icon(Icons.star, color: style.appGreyText, size: 36),
                                        Icon(Icons.star, color: style.appGreyText, size: 36),
                                    ],
                                ),
                                SizedBox(height: 16),
                                TextField(
                                  maxLines: 3,
                                  decoration: style.textAreaDecoration('Note'),
                                )
                            ],
                        ),
                    ),
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