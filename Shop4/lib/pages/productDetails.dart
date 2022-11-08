/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shopping/helper/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopping/pages/cart.dart';

class productDetails extends StatefulWidget {
  productDetails({Key? key}) : super(key: key);

  static const String page_id = "Product Details";

  @override
  _productDetailsState createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  int tabID = 1;
  List<Item> slider = <Item>[
    Item('1', 'assets/images/b1.jpg'),
    Item('2', 'assets/images/b1.jpg'),
    Item('3', 'assets/images/b1.jpg'),
    Item('4', 'assets/images/b1.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'W',
        style:
            TextStyle(fontFamily: 'semi-bold', fontSize: 22, color: appColor),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
            )
          ],
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Backpack With Crocodile',
                  style: headText(),
                ),
                Text(
                  '\$ 42.36',
                  style: headText(),
                )
              ],
            ),
            Text(
              'Asos',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  height: 300,
                ),
                items: slider
                    .map((item) => Container(
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10, top: 40),
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(item.img),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(23 reviews)',
                          style: greyText(),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Share'),
                      ],
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.blue,
                            size: 35,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Blue',
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Size',
                            style: greyText(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '1',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => cart()),
                    ),
                  );
                },
                child: Text('Add to Cart'),
                style: simpleBlueButton(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Save'),
                style: blueOutlineButton(),
              ),
            ),
            _buildSegment(),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  if (tabID == 1)
                    productContainer()
                  else if (tabID == 2)
                    brandContainer()
                  else if (tabID == 3)
                    reviewContainer()
                  else if (tabID == 4)
                    featuresContainer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget productContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
          )
        ],
      ),
    );
  }

  Widget brandContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
          )
        ],
      ),
    );
  }

  Widget reviewContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          allReviews(),
          allReviews(),
          allReviews(),
        ],
      ),
    );
  }

  Widget allReviews() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade400, width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Leonard Pered',
                style: TextStyle(fontFamily: 'medium'),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical'),
          SizedBox(
            height: 20,
          ),
          Text(
            '15 Mar 2022',
            style: greyText(),
          )
        ],
      ),
    );
  }

  Widget featuresContainer() {
    return Container(
      child: Column(
        children: [
          features('Material', '100% Cotton'),
          features('Handle', 'Grab Handle'),
          features('Straps', 'Adjustable Strap'),
          features('Back', 'Padded back'),
          features('Pocket', 'External Pocket'),
        ],
      ),
    );
  }

  Widget features(left, right) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              left,
              style: greyText(),
            ),
          ),
          Expanded(
            flex: 8,
            child: Text(right),
          )
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey.shade400,
          ),
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.shade400,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tabID = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5, right: 10),
              child: Text('Product', style: segmentText(1)),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5, right: 10),
                child: Text('Brand', style: segmentText(2)),
              )),
          InkWell(
            onTap: () {
              setState(() {
                tabID = 3;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5, right: 10),
              child: Text('Review (23)', style: segmentText(3)),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                tabID = 4;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5, right: 10),
              child: Text('Features', style: segmentText(4)),
            ),
          ),
        ],
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 16,
        fontFamily: tabID == val ? 'semi-bold' : 'regular',
        color: tabID == val ? Colors.black : Colors.black54);
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
