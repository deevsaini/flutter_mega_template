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

class ReviewsScreen extends StatefulWidget {
    ReviewsScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Reviews';

    @override
    State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {

    List<Item> services = <Item>[
        Item('assets/images/user1.jpg', 'Alex Stone'),
        Item('assets/images/user2.jpg', 'Alex Stone'),
        Item('assets/images/user3.jpg', 'Alex Stone'),
        Item('assets/images/user4.jpg', 'Alex Stone'),
        Item('assets/images/user5.jpg', 'Alex Stone'),
        Item('assets/images/user6.jpg', 'Alex Stone'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Customer Review', style: style.pageTitleText()),
                centerTitle: true,
                elevation: 0,
                flexibleSpace: Container(
                  decoration: style.appBarDecoration(),
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share)
                    )
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Column(
                    children: <Widget>[
                        Container(
                            child: Column(
                                children: [
                                    Container(
                                        padding: EdgeInsets.only(left: 16, right: 16),
                                        color: Colors.white,
                                        child: TextField(
                                            maxLines: 4,
                                            decoration: InputDecoration(
                                                hintText: 'Say something about our services...',
                                                border: InputBorder.none
                                            ),
                                        )
                                    ),
                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                              Row(
                                                  children: [
                                                      Icon(Icons.star, color: style.appColor),
                                                      Icon(Icons.star, color: style.appColor),
                                                      Icon(Icons.star, color: style.appColor),
                                                      Icon(Icons.star, color: style.appColor),
                                                      Icon(Icons.star, color: style.appColor),
                                                      SizedBox(width: 16),
                                                      Text('Cool',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontFamily: 'medium',
                                                              color: style.appColor
                                                          ),
                                                      ),
                                                  ],
                                              ),
                                              Icon(Icons.near_me, color: style.appColor),
                                          ],
                                        )
                                    ),
                                ],
                            ),
                        ),
                        Container(
                            color: Color.fromARGB(255, 220, 220, 220),
                            padding: EdgeInsets.all(16),
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                children: services.map((e) {
                                    return _buildSingleReview(e);
                                }).toList(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildSingleReview(review) {
        return Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 16),
            decoration: style.cardBox(),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(right: 16),
                        decoration: style.avatarImage(review.img)
                    ),
                    Expanded(
                        child: Column(
                            children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text(review.name,
                                            style: TextStyle(
                                                fontFamily: 'medium',
                                                fontSize: 18
                                            ),
                                        ),
                                        Row(
                                            children: [
                                                Icon(Icons.star, color: style.appColor, size: 16),
                                                Icon(Icons.star, color: style.appColor, size: 16),
                                                Icon(Icons.star, color: style.appColor, size: 16),
                                                Icon(Icons.star, color: style.appColor, size: 16),
                                                Icon(Icons.star, color: style.appColor, size: 16),
                                            ],
                                        )
                                    ],
                                ),
                                Text('Lorem ipsum dolor sit amet consectetur, adipisicing elit. Atque ullam temporibus molestiae.',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey
                                    ),
                                )
                            ],
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