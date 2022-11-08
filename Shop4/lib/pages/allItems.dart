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
import 'package:shopping/pages/filter.dart';
import 'package:shopping/pages/productDetails.dart';

class allItems extends StatefulWidget {
  allItems({Key? key}) : super(key: key);

  static const String page_id = "All Items";

  @override
  _allItemsState createState() => _allItemsState();
}

class _allItemsState extends State<allItems> {
  int tabID = 1;
  int tabs = 4;

  List<Item> categories = <Item>[
    Item(
      'assets/images/b1.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
    Item(
      'assets/images/b2.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
    Item(
      'assets/images/b3.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
    Item(
      'assets/images/b4.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
    Item(
      'assets/images/b1.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
    Item(
      'assets/images/b2.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
    Item(
      'assets/images/b3.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
    Item(
      'assets/images/b4.jpg',
      'Little America Backpack',
      'Herchel Supply Co',
    ),
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
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: Icon(Icons.dehaze),
      // ),
      title: Text(
        'W',
        style: TextStyle(
            fontFamily: 'semi-bold', fontSize: 22, color: Colors.white),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute<Null>(
                    builder: (BuildContext context) {
                      return filter();
                    },
                    fullscreenDialog: true));
              },
              icon: Icon(Icons.candlestick_chart_outlined),
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
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildSegment(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                if (tabID == 1)
                  accessoriesContainer()
                else if (tabID == 2)
                  bagsContainer()
                else if (tabID == 3)
                  tshirtsContainer()
                else if (tabID == 4)
                  shoesContainer()
                else if (tabID == 5)
                  jacketContainer()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      color: appColor,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
              padding: EdgeInsets.only(bottom: 5, right: 15),
              child: Text('Accessories', style: segmentText(1)),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5, right: 15),
                child: Text('Bags', style: segmentText(2)),
              )),
          InkWell(
            onTap: () {
              setState(() {
                tabID = 3;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5, right: 15),
              child: Text('T-Shirts', style: segmentText(3)),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                tabID = 4;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5, right: 15),
              child: Text('Shoes', style: segmentText(4)),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 5;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                child: Text('Leather Jackets', style: segmentText(5)),
              )),
        ],
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 16,
        fontFamily: tabID == val ? 'semi-bold' : 'regular',
        color: tabID == val ? Colors.white : Colors.white38);
  }

  Widget bagsContainer() {
    return Container(
      child: Column(
        children: [
          _buildBottomSegment(),
          Container(
            child: Column(
              children: [
                if (tabs == 1)
                  filterContainer()
                else if (tabs == 2)
                  sortContainer()
                else if (tabs == 3)
                  fullSizeContainer()
                else if (tabs == 4)
                  gridContainer()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget filterContainer() {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 1,
        childAspectRatio: 100 / 100,
        physics: ScrollPhysics(),
        children: categories.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new productDetails()));
            },
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey.shade400)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // padding: EdgeInsets.only(top: 10),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(e.img), fit: BoxFit.fill)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              (e.text),
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              '\$95',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'semi-bold'),
                            ),
                          ],
                        ),
                        Text(
                          (e.text2),
                          style: greyText(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget sortContainer() {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 70 / 100,
        physics: ScrollPhysics(),
        children: categories.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new productDetails()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey.shade400)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(e.img), fit: BoxFit.fill)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          (e.text),
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          (e.text2),
                          style: greyText(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$95',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'semi-bold'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget fullSizeContainer() {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 1,
        childAspectRatio: 100 / 100,
        physics: ScrollPhysics(),
        children: categories.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new productDetails()));
            },
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey.shade400)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // padding: EdgeInsets.only(top: 10),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(e.img), fit: BoxFit.fill)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              (e.text),
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              '\$95',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'semi-bold'),
                            ),
                          ],
                        ),
                        Text(
                          (e.text2),
                          style: greyText(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget gridContainer() {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 70 / 100,
        physics: ScrollPhysics(),
        children: categories.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new productDetails()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey.shade400)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(e.img), fit: BoxFit.fill)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          (e.text),
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          (e.text2),
                          style: greyText(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$95',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'semi-bold'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildBottomSegment() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black45))),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tabs = 1;
              });
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.candlestick_chart_outlined,
                    color: iconColor(1),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabs = 2;
                });
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.signal_cellular_alt_rounded,
                      color: iconColor(2),
                    ),
                  ],
                ),
              )),
          InkWell(
            onTap: () {
              setState(() {
                tabs = 3;
              });
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.view_agenda_outlined,
                    color: iconColor(3),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                tabs = 4;
              });
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.window_outlined,
                    color: iconColor(4),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // segmentDecoration(val) {
  //   return BoxDecoration(
  //     border: Border(
  //       right: BorderSide(width: 2, color: Colors.black38),
  //     ),
  //   );
  // }

  iconColor(val) {
    return tabs == val ? Colors.black : Colors.black38;
  }

  Widget accessoriesContainer() {
    return Container(
      child: Column(
        children: [
          _buildBottomSegment(),
          Container(
            child: Column(
              children: [
                if (tabs == 1)
                  filterContainer()
                else if (tabs == 2)
                  sortContainer()
                else if (tabs == 3)
                  fullSizeContainer()
                else if (tabs == 4)
                  gridContainer()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tshirtsContainer() {
    return Container(
      child: Column(
        children: [
          _buildBottomSegment(),
          Container(
            child: Column(
              children: [
                if (tabs == 1)
                  filterContainer()
                else if (tabs == 2)
                  sortContainer()
                else if (tabs == 3)
                  fullSizeContainer()
                else if (tabs == 4)
                  gridContainer()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget shoesContainer() {
    return Container(
      child: Column(
        children: [
          _buildBottomSegment(),
          Container(
            child: Column(
              children: [
                if (tabs == 1)
                  filterContainer()
                else if (tabs == 2)
                  sortContainer()
                else if (tabs == 3)
                  fullSizeContainer()
                else if (tabs == 4)
                  gridContainer()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget jacketContainer() {
    return Container(
      child: Column(
        children: [
          _buildBottomSegment(),
          Container(
            child: Column(
              children: [
                if (tabs == 1)
                  filterContainer()
                else if (tabs == 2)
                  sortContainer()
                else if (tabs == 3)
                  fullSizeContainer()
                else if (tabs == 4)
                  gridContainer()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img, this.text, this.text2);
  final String img;
  final String text;
  final String text2;
}
