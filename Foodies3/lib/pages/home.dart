/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/rest-detail.dart';
import 'package:gofoodflutter/pages/search.dart';
import '../helper/style.dart' as style;

class HomePage extends StatefulWidget {
    HomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Home';

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    List<Item> categories = <Item>[
        Item('assets/images/logo.png', 'All'),
        Item('assets/images/coffee.png', 'Coffee'),
        Item('assets/images/drink.png', 'Drink'),
        Item('assets/images/food.png', 'Fast Food'),
        Item('assets/images/cupcake.png', 'Cake'),
        Item('assets/images/cupcake2.png', 'Cake'),
        Item('assets/images/milk-tea.png', 'Milk Tea'),
    ];

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
                backgroundColor: style.appColor,
                automaticallyImplyLeading: false,
                elevation: 0,
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
                        _buildColorContainer(),
                        Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                children: [
                                    _buildTitleRow('Categories'),
                                    SizedBox(height: 16),

                                    Container(
                                        height: 110,
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(categories.length, (index) {
                                                return _buildSingleCategory(categories[index], index);
                                            }),
                                        ),
                                    ),

                                    _buildTitleRow('Products Ordered'),
                                    SizedBox(height: 16),

                                    Container(
                                        height: 200,
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(foods.length, (index) {
                                                return _buildSingleFood(foods[index], index);
                                            }),
                                        ),
                                    ),

                                    _buildTitleRow('Favourite Restaurants'),
                                    SizedBox(height: 16),

                                    Container(
                                        height: 200,
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(foods.length, (index) {
                                                return _buildSingleFood(foods[index], index);
                                            }),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildColorContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            color: style.appColor,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('Delivering to'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15
                        ),
                    ),
                    SizedBox(height: 3),
                    Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.white),
                          SizedBox(width: 10),
                          Expanded(
                              child: Text('76A Eighth Avenue, New York, US.',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                              )
                          ),
                        ],
                    ),
                    SizedBox(height: 16),
                    Row(
                        children: [
                            Expanded(
                                child: TextField(
                                    onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return SearchPage();
                                            }
                                        );
                                    },
                                    decoration: style.textInputDecoration('Search'),
                                )
                            ),
                            SizedBox(width: 16),
                            InkWell(
                                child: Icon(Icons.filter_alt, color: Colors.white, size: 36),
                            )
                        ],
                    )
                ],
            ),
        );
    }

    Widget _buildTitleRow(title) {
        return Row(
            children: [
                Expanded(
                    child: Text('$title', style: style.smallTitle())
                ),
                Row(
                    children: [
                        Text('View All', style: style.smallColorTitle()),
                        SizedBox(width: 4),
                        Icon(Icons.arrow_forward_ios, color: style.appColor, size: 16)
                    ],
                ),
            ],
        );
    }

    Widget _buildSingleCategory(e, index) {
        return Container(
            margin: EdgeInsets.only(right: 16),
            child: Column(
                children: [
                    Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5)
                            ),
                            color: Colors.white
                        ),
                        padding: index == 0 ? EdgeInsets.all(2) : EdgeInsets.all(8),
                        child: Image.asset(e.img),
                    ),
                    SizedBox(height: 7),
                    Text(e.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'medium'
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildSingleFood(e, index) {
        return InkWell(
            onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new RestDetailPage()
                ));
            },
            child: Container(
                width: 120,
                margin: EdgeInsets.only(right: 16),
                decoration: style.whiteContainer(),
                child: Column(
                    children: [
                        Container(
                          width: double.infinity,
                          height: 105,
                          decoration: style.topCornerRoundImage(e.img)
                        ),
                        Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(e.name,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    Row(
                                        children: [
                                            Icon(Icons.local_dining, size: 16, color: style.appGreyText),
                                            SizedBox(width: 3),
                                            Flexible(child:
                                                Text('Seafood & Fries',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: style.appGreyText,
                                                    ),
                                                )
                                            ),
                                        ],
                                    )
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}