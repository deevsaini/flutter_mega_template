/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shopping/helper/style.dart';
import 'package:shopping/pages/account.dart';
import 'package:shopping/pages/allCategory.dart';
import 'package:shopping/pages/allItems.dart';
import 'package:shopping/pages/orderList.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  static const String page_id = "Home Screen";

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  PageController pageController = PageController(initialPage: 0);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Item> categories = <Item>[
    Item('Accessories', '12 Products', 'assets/images/p1.jpg'),
    Item('Bags', '73 Products', 'assets/images/p2.jpg'),
    Item('Shirts', '289 Products', 'assets/images/p3.jpg'),
    Item('Caps & Hats', '2 Products', 'assets/images/p4.png'),
    Item('Shorts', '9812 Products', 'assets/images/p5.jpg'),
    Item('Shoes', '15 Products', 'assets/images/p6.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      drawer: _buildSideMenu(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.dehaze),
      ),
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
      child: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/home.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.9),
            ),
            child: Container(
              height: 450,
              width: double.infinity,
              padding: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text(
                    'TRENDING NOW',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'mrdium',
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    'Offbeat Ease',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'mrdium',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    child: Text(
                      'The best way to find out if you can trust somebody is to trust them.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'regular',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'SHOP BY PRODUCT',
                      style: headText(),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => allItems()));
                      },
                      child: Text(
                        "All Items",
                        style: blueText(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
                                  builder: (context) => new allItems()));
                        },
                        child: Container(
                          decoration:
                              BoxDecoration(border: Border.all(width: 0.5)),
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
                                        image: AssetImage(e.img),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
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
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSideMenu() {
    return Drawer(
      child: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => allCategories()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.window_rounded,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('All Categoreies'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => orderList()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.add_box_outlined,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('My Orders'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => account()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('My Account'),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class Item {
  const Item(this.text, this.text2, this.img);
  final String text;
  final String text2;
  final String img;
}
