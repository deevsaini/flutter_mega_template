/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/variations.dart';
import '../helper/style.dart' as style;

class RestDetailPage extends StatefulWidget {
    RestDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Rest Detail';

    @override
    State<RestDetailPage> createState() => _RestDetailPageState();
}

class _RestDetailPageState extends State<RestDetailPage> {

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

    String tabID = 'Products';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                child: Column(
                    children: [
                        _buildRestDetail(),

                        Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: (Colors.grey[300])!,
                                        width: 2
                                    )
                                )
                            ),
                            child: _buildSegmentContainer(),
                        ),

                        tabID == 'Products' ?

                        _buildProductsTab() : Container(),

                        tabID == 'Review' ?
                        _buildReviewTab() : Container(),

                        tabID == 'Information' ?
                        _buildInformationTab() : Container()

                    ],
                ),
            ),
        );
    }

    Widget _buildRestDetail() {
        return Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/rest3.jpg'),
                fit: BoxFit.cover
            ),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            color: Color.fromARGB(100, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                    ),
                    Row(
                      children: [
                        InkWell(
                          child: Icon(Icons.bookmark_outline, color: Colors.white, size: 30),
                        ),
                        SizedBox(width: 16),
                        InkWell(
                          child: Icon(Icons.more_horiz, color: Colors.white, size: 30),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kichi Coffee & Drink',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'medium',
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Colors.white, size: 16),
                          Text('76A Eighth Avenue, New York.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: style.appColor, size: 16),
                          Text('4.5 (1000 Reviews)',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
    }

    Widget _buildSegmentContainer() {
        return Row(
            children: [
                Expanded(
                    child: _buildSingleSegment('Products')
                ),
                Expanded(
                    child: _buildSingleSegment('Review')
                ),
                Expanded(
                    child: _buildSingleSegment('Information')
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

    Widget _buildProductsTab() {
        return Container(
            child: Column(
                children: [
                    Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                            children: [

                                _buildTitleRow('Popular Items'),
                                SizedBox(height: 16),

                                Container(
                                    height: 200,
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

                    Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(16),
                        child: Column(
                            children: [

                                _buildSimpleTitleRow('Juice', 2),
                                SizedBox(height: 16),

                                ListView(
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    children: List.generate(foods.length, (index) {
                                        return _buildHorizontalFood(foods[index]);
                                    }),
                                )
                            ],
                        ),
                    ),
                ],
            ),
        );
    }

    Widget _buildSingleFood(e, index) {
        return InkWell(
            onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => Container(
                        height: MediaQuery.of(context).size.height * 0.75,
                        padding: EdgeInsets.only(top: 16),
                        decoration: style.radiusContainer(),
                        child: VariationsPage(),
                    ),
                );
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
                            decoration: style.topCornerRoundImage(e.img),
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
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text('\$2.5',
                                                style: TextStyle(
                                                  color: style.appColor,
                                                ),
                                            ),
                                            Icon(Icons.add_circle, size: 24, color: style.appColor),
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

    Widget _buildHorizontalFood(val) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
                children: [
                    Container(
                        height: 90,
                        width: 90,
                        decoration:  style.roundedImage(val.img),
                    ),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Row(
                                        children: [
                                            Expanded(
                                                child: Text(val.name,
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
                                    Text('Matcha milk tea special is valuable to stock for cooking, cleaning.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: style.appGreyText
                                        ),
                                    ),

                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Expanded(
                                                child: Row(
                                                    children: [
                                                        Text('\$13.00',
                                                            style: TextStyle(
                                                                color: style.appColor,
                                                                fontSize: 12
                                                            ),
                                                        ),
                                                        Text('|', style: TextStyle(color: style.appGreyText)),
                                                        Row(
                                                            children: [
                                                                Icon(Icons.shopping_bag_outlined, color: style.appGreyText, size: 16),
                                                                Padding(
                                                                    padding: EdgeInsets.only(left: 3, right: 3),
                                                                    child: Text('25',
                                                                        style: TextStyle(
                                                                            fontSize: 12,
                                                                            color: style.appGreyText
                                                                        ),
                                                                    ),
                                                                ),
                                                                Icon(Icons.add, color: style.appGreyText, size: 16)
                                                            ],
                                                        ),
                                                      Text('|', style: TextStyle(color: style.appGreyText)),
                                                      Row(
                                                          children: [
                                                              Icon(Icons.thumb_up_outlined, color: style.appGreyText, size: 16),
                                                              Padding(
                                                                  padding: EdgeInsets.only(left: 3),
                                                                  child: Text('25',
                                                                      style: TextStyle(
                                                                          fontSize: 12,
                                                                          color: style.appGreyText
                                                                      ),
                                                                  ),
                                                              ),
                                                          ],
                                                      ),
                                                  ],
                                                )
                                            ),
                                            Icon(Icons.add_circle, size: 18, color: style.appColor),
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

    Widget _buildReviewTab() {
        return Container(
            child: Column(
                children: [
                    Container(
                        padding: EdgeInsets.all(16),
                        decoration: style.borderBottom(),
                        child: Column(
                            children: [
                                _buildTitleRow('Photos & Videos'),
                                SizedBox(height: 16),
                                Container(
                                    height: 90,
                                    margin: EdgeInsets.only(bottom: 24),
                                    child: ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        children: List.generate(foods.length, (index) {
                                            return Container(
                                                height: 90,
                                                width: 95,
                                                margin: EdgeInsets.only(right: 16),
                                                decoration: style.roundedImage(foods[index].img),
                                            );
                                        }),
                                    )
                                ),
                                Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text('Rate',
                                            style: TextStyle(
                                                fontFamily: 'medium',
                                                fontSize: 16
                                            ),
                                        ),
                                        SizedBox(width: 20),
                                        Expanded(
                                            child: _buildTable(),
                                        )
                                    ],
                                )
                            ],
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: [1,2,3].map((e) {
                                return _buildSingleReview();
                            }).toList(),
                        )
                    )
                ],
            ),
        );
    }

    Widget _buildTable() {
        return Table(
            children: [
                TableRow(
                    children: [
                        _buildTableText('99+'),
                        _buildTableText('56'),
                        _buildTableText('45'),
                        _buildTableText('12'),
                        _buildTableText('5'),
                    ]
                ),
                TableRow(
                    children: [
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                    ]
                ),
                TableRow(
                    children: [
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                    ]
                ),
                TableRow(
                    children: [
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                    ]
                ),
                TableRow(
                    children: [
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                    ]
                ),
                TableRow(
                    children: [
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                        _buildTableData(),
                    ]
                )
            ],
        );
    }

    Widget _buildTableText(val) {
        return TableCell(
            child: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Text('$val',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: style.appGreyText
                    ),
                ),
            )
        );
    }

    Widget _buildTableData() {
      return TableCell(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Icon(
                Icons.star,
                color: style.appGreyText,
                size: 20
            ),
          )
      );
    }

    Widget _buildSingleReview() {
        return Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration:  style.borderBottom(),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(right: 16),
                        decoration: style.roundedImage('assets/images/user6.jpg'),
                    ),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('Charles Morris',
                                    style: TextStyle(
                                        fontFamily: 'medium',
                                        fontSize: 15
                                    ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Icon(Icons.star, size: 16, color: style.appGreyText),
                                        Icon(Icons.star, size: 16, color: style.appGreyText),
                                        Icon(Icons.star, size: 16, color: style.appGreyText),
                                        Icon(Icons.star, size: 16, color: style.appGreyText),
                                        Icon(Icons.star, size: 16, color: style.appGreyText),
                                        Expanded(
                                            child: Text('Yesterday 10:30 AM',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: style.appGreyText
                                                ),
                                            )
                                        )
                                    ],
                                ),
                                SizedBox(height: 5),
                                Text('Matcha milk tea very yummy! I like it.',
                                    style: TextStyle(
                                        color: style.appGreyText
                                    ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                    height: 60,
                                    child: ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        children: List.generate(foods.sublist(0,2).length, (index) {
                                            return Container(
                                                width: 60,
                                                height: 60,
                                                margin: EdgeInsets.only(right: 16),
                                                decoration: style.roundedImage(foods[index].img),
                                            );
                                        }),
                                    )
                                ),
                            ],
                        )
                    ),
                ],
            ),
        );
    }

    Widget _buildInformationTab() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('Informations',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'medium'
                        ),
                    ),
                    SizedBox(height: 16),
                    Text(' Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat, nemo. Nulla perferendis fugit praesentium commodi blanditiis corporis iste aut, dolore fuga dolor ipsam ab! Eveniet ratione suscipit ipsum eaque quis. '),
                    SizedBox(height: 16),
                    Text('Address',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'medium'
                        ),
                    ),
                    SizedBox(height: 16),
                    Container(
                        width: double.infinity,
                        height: 180,
                        decoration: style.roundedImage('assets/images/map.png'),
                    ),
                ],
            ),
        );
    }

    Widget _buildTitleRow(title) {
        return Row(
            children: [
                Expanded(
                    child: Text('$title',style: style.smallTitle())
                ),
                Row(
                    children: [
                        Text('View All',style: style.smallColorTitle()),
                        SizedBox(width: 4),
                        Icon(Icons.arrow_forward_ios, color: style.appColor, size: 16)
                    ],
                ),
            ],
        );
    }

    Widget _buildSimpleTitleRow(title, no) {
        return Row(
            children: [
                Text('$title',style: style.smallTitle()),
                SizedBox(width: 8),
                Text('$no'+' Items',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                    ),
                )
            ],
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}